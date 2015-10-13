function vl_sift(img::AbstractImageDirect;
                 verbose = false,
                 octaves = -1, # Maximum possible
                 levels = 3,
                 firstOctave = 0,
                 edgeThreshold = -1.0,
                 peakThreshold = -1.0,
                 normThreshold = -1.0,
                 magnif = -1.0,
                 windowSize = -1.0,
                 floatDescriptors = false)
  imgData = data(float32(convert(Array, convert(Image{Gray}, img))))

  frames = Array(Float64, 4, 0)
  if floatDescriptors
    descriptors = Array(Float32, 128, 0)
  else
    descriptors = Array(UInt8, 128, 0)
  end

  filterPtr = vl_sift_new(height(img), width(img), octaves, levels, firstOctave)
  filter = unsafe_load(filterPtr)
  if peakThreshold >= 0 filter.peak_thresh = peakThreshold end
  if edgeThreshold >= 0 filter.edge_thresh = edgeThreshold end
  if normThreshold >= 0 filter.norm_thresh = normThreshold end
  if magnif        >= 0 filter.magnif      = magnif end
  if windowSize    >= 0 filter.windowSize = windowSize end
  unsafe_store!(filterPtr, filter)
  if verbose
    println("vl_sift: filter settings:")
    println("vl_sift:   octaves      (O)      = $(filter.O)")
    println("vl_sift:   levels       (S)      = $(filter.S)")
    println("vl_sift:   first octave (o_min)  = $(filter.o_min)")
    println("vl_sift:   edge thresh           = $(filter.edge_thresh)")
    println("vl_sift:   peak thresh           = $(filter.peak_thresh)")
    println("vl_sift:   norm thresh           = $(filter.norm_thresh)")
    println("vl_sift:   magnif                = $(filter.magnif)")
    println("vl_sift:   window size           = $(filter.windowSize)")
  end
  # Process each octave
  noctaves = filter.O
  for o = filter.o_min:filter.O-1
    if verbose
      println("vl_sift: processing octave $o");
    end
    if o == filter.o_min
      err = vl_sift_process_first_octave(filterPtr, pointer(imgData))
    else
      err = vl_sift_process_next_octave(filterPtr)
    end
    if err != VL_ERR_OK
      break
    end
    if verbose
      println("vl_sift: GSS octave $(unsafe_load(filterPtr).o_cur) computed");
    end
    vl_sift_detect(filterPtr)
    filter = unsafe_load(filterPtr)
    if verbose
      println("vl_sift: detected $(filter.nkeys) (unoriented) keypoints")
    end
    # Process each keypoint
    for i = 1:filter.nkeys
      keypoint = unsafe_load(filter.keys, i)
      keypointPtr = filter.keys + (i-1)*sizeof(VlSiftKeypoint)
      orientations = Array(Float64, 4)
      norientations = vl_sift_calc_keypoint_orientations(filterPtr, orientations, keypointPtr)
      # Process each orientation
      for q = 1:norientations
        # Compute descriptor (if necessary)
        # if nout > 1
        rdescriptor = Array(vl_sift_pix, 128, 1)
        vl_sift_calc_keypoint_descriptor(filterPtr, rdescriptor, keypointPtr, orientations[q])
        descriptor = Array(vl_sift_pix, 128, 1)
        transpose_descriptor(descriptor, rdescriptor)
        # end
        frame = [keypoint.y+1; keypoint.x+1; keypoint.sigma; pi/2-orientations[q]]
        frames = [frames frame]
        descriptor = 512.0*descriptor
        if !floatDescriptors
          descriptor[descriptor .> 255] = 255.0
          descriptor = uint8(descriptor)
        end
        descriptors = [descriptors descriptor]
      end
    end
  end
  vl_sift_delete(filterPtr)
  if verbose
    println("vl_sift: found $(size(frames,2)) keypoints")
  end
  (frames, descriptors)
end

function transpose_descriptor(dst::Array, src::Array)
  BO = 8 # number of orientation bins
  BP = 4 # number of spatial bins

  for j = 0:BP-1
    jp = BP - 1 - j
    for i = 0:BP-1
      o  = BO * i + BP*BO * j
      op = BO * i + BP*BO * jp
      dst[op + 1] = src[o + 1]
      for t = 1:BO-1
        dst[BO - t + op + 1] = src[t + o + 1]
      end
    end
  end
end
