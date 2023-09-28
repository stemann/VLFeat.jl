function vl_sift(
    img::AbstractArray{Gray{N0f8}, 2};
    verbose = false,
    octaves = -1, # Maximum possible
    levels = 3,
    first_octave = 0,
    edge_threshold = -1.0,
    peak_threshold = -1.0,
    norm_threshold = -1.0,
    magnif = -1.0,
    window_size = -1.0,
    float_descriptors = false,
)
    img_data = Float32.(img)

    frames = Array{Float64}(undef, 4, 0)
    if float_descriptors
        descriptors = Array{Float32}(undef, 128, 0)
    else
        descriptors = Array{UInt8}(undef, 128, 0)
    end

    filter_ptr = vl_sift_new(size(img, 1), size(img, 2), octaves, levels, first_octave)
    filter = unsafe_load(filter_ptr)
    if peak_threshold >= 0
        filter.peak_thresh = peak_threshold
    end
    if edge_threshold >= 0
        filter.edge_thresh = edge_threshold
    end
    if norm_threshold >= 0
        filter.norm_thresh = norm_threshold
    end
    if magnif >= 0
        filter.magnif = magnif
    end
    if window_size >= 0
        filter.windowSize = window_size
    end
    unsafe_store!(filter_ptr, filter)
    if verbose
        @debug "vl_sift: filter settings:"
        @debug "vl_sift:   octaves      (O)      = $(filter.O)"
        @debug "vl_sift:   levels       (S)      = $(filter.S)"
        @debug "vl_sift:   first octave (o_min)  = $(filter.o_min)"
        @debug "vl_sift:   edge thresh           = $(filter.edge_thresh)"
        @debug "vl_sift:   peak thresh           = $(filter.peak_thresh)"
        @debug "vl_sift:   norm thresh           = $(filter.norm_thresh)"
        @debug "vl_sift:   magnif                = $(filter.magnif)"
        @debug "vl_sift:   window size           = $(filter.windowSize)"
    end
    # Process each octave
    noctaves = filter.O
    for o in (filter.o_min):(filter.O - 1)
        if verbose
            @debug "vl_sift: processing octave $o"
        end
        if o == filter.o_min
            err = vl_sift_process_first_octave(filter_ptr, pointer(img_data))
        else
            err = vl_sift_process_next_octave(filter_ptr)
        end
        if err != VL_ERR_OK
            break
        end
        if verbose
            @debug "vl_sift: GSS octave $(unsafe_load(filter_ptr).o_cur) computed"
        end
        vl_sift_detect(filter_ptr)
        filter = unsafe_load(filter_ptr)
        if verbose
            @debug "vl_sift: detected $(filter.nkeys) (unoriented) keypoints"
        end
        # Process each keypoint
        for i in 1:(filter.nkeys)
            keypoint = unsafe_load(filter.keys, i)
            keypoint_ptr = filter.keys + (i - 1) * sizeof(VlSiftKeypoint)
            orientations = Array{Float64}(undef, 4)
            norientations = vl_sift_calc_keypoint_orientations(filter_ptr, orientations, keypoint_ptr)
            # Process each orientation
            for q in 1:norientations
                # Compute descriptor (if necessary)
                # if nout > 1
                rdescriptor = Array{vl_sift_pix}(undef, 128, 1)
                vl_sift_calc_keypoint_descriptor(filter_ptr, rdescriptor, keypoint_ptr, orientations[q])
                descriptor = Array{vl_sift_pix}(undef, 128, 1)
                transpose_descriptor(descriptor, rdescriptor)
                # end
                frame = [keypoint.y + 1; keypoint.x + 1; keypoint.sigma; pi / 2 - orientations[q]]
                frames = [frames frame]
                descriptor = 512.0 * descriptor
                if !float_descriptors
                    descriptor = round.(UInt8, clamp.(descriptor, 0.0, 255.0))
                end
                descriptors = [descriptors descriptor]
            end
        end
    end
    vl_sift_delete(filter_ptr)
    if verbose
        @debug "vl_sift: found $(size(frames,2)) keypoints"
    end
    return (frames, descriptors)
end

function transpose_descriptor(dst::Array, src::Array)
    BO = 8 # number of orientation bins
    BP = 4 # number of spatial bins

    for j in 0:(BP - 1)
        jp = BP - 1 - j
        for i in 0:(BP - 1)
            o = BO * i + BP * BO * j
            op = BO * i + BP * BO * jp
            dst[op + 1] = src[o + 1]
            for t in 1:(BO - 1)
                dst[BO - t + op + 1] = src[t + o + 1]
            end
        end
    end
end
