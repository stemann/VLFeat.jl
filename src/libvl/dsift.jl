# Julia wrapper for header: /home/kevin/src/vlfeat/vl/dsift.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_dsift_new,
    vl_dsift_new_basic,
    vl_dsift_delete,
    vl_dsift_process,
    vl_dsift_transpose_descriptor,
    vl_dsift_set_steps,
    vl_dsift_set_bounds,
    vl_dsift_set_geometry,
    vl_dsift_set_flat_window,
    vl_dsift_set_window_size,
    vl_dsift_get_descriptors,
    vl_dsift_get_descriptor_size,
    vl_dsift_get_keypoint_num,
    vl_dsift_get_keypoints,
    vl_dsift_get_bounds,
    vl_dsift_get_steps,
    vl_dsift_get_geometry,
    vl_dsift_get_flat_window,
    vl_dsift_get_window_size,
    _vl_dsift_update_buffers,
    vl_dsift_get_descriptor_size,
    vl_dsift_get_descriptors,
    vl_dsift_get_keypoints,
    vl_dsift_get_keypoint_num,
    vl_dsift_get_geometry,
    vl_dsift_get_bounds,
    vl_dsift_get_flat_window,
    vl_dsift_get_steps,
    vl_dsift_set_steps,
    vl_dsift_set_bounds,
    vl_dsift_set_geometry,
    vl_dsift_set_flat_window,
    vl_dsift_transpose_descriptor,
    vl_dsift_set_window_size,
    vl_dsift_get_window_size


function vl_dsift_new(width::Integer,height::Integer)
    ccall((:vl_dsift_new,libvl),Ptr{VlDsiftFilter},(Cint,Cint),width,height)
end

function vl_dsift_new_basic(width::Integer,height::Integer,step::Integer,binSize::Integer)
    ccall((:vl_dsift_new_basic,libvl),Ptr{VlDsiftFilter},(Cint,Cint,Cint,Cint),width,height,step,binSize)
end

function vl_dsift_delete(self)
    ccall((:vl_dsift_delete,libvl),Void,(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_process(self,im)
    ccall((:vl_dsift_process,libvl),Void,(Ptr{VlDsiftFilter},Ptr{Cfloat}),self,im)
end

function vl_dsift_transpose_descriptor(dst,src,numBinT::Integer,numBinX::Integer,numBinY::Integer)
    ccall((:vl_dsift_transpose_descriptor,libvl),Void,(Ptr{Cfloat},Ptr{Cfloat},Cint,Cint,Cint),dst,src,numBinT,numBinX,numBinY)
end

function vl_dsift_set_steps(self,stepX::Integer,stepY::Integer)
    ccall((:vl_dsift_set_steps,libvl),Void,(Ptr{VlDsiftFilter},Cint,Cint),self,stepX,stepY)
end

function vl_dsift_set_bounds(self,minX::Integer,minY::Integer,maxX::Integer,maxY::Integer)
    ccall((:vl_dsift_set_bounds,libvl),Void,(Ptr{VlDsiftFilter},Cint,Cint,Cint,Cint),self,minX,minY,maxX,maxY)
end

function vl_dsift_set_geometry(self,geom)
    ccall((:vl_dsift_set_geometry,libvl),Void,(Ptr{VlDsiftFilter},Ptr{VlDsiftDescriptorGeometry}),self,geom)
end

function vl_dsift_set_flat_window(self,useFlatWindow::Integer)
    ccall((:vl_dsift_set_flat_window,libvl),Void,(Ptr{VlDsiftFilter},vl_bool),self,useFlatWindow)
end

function vl_dsift_set_window_size(self,windowSize::Cdouble)
    ccall((:vl_dsift_set_window_size,libvl),Void,(Ptr{VlDsiftFilter},Cdouble),self,windowSize)
end

function vl_dsift_get_descriptors(self)
    ccall((:vl_dsift_get_descriptors,libvl),Ptr{Cfloat},(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_descriptor_size(self)
    ccall((:vl_dsift_get_descriptor_size,libvl),Cint,(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_keypoint_num(self)
    ccall((:vl_dsift_get_keypoint_num,libvl),Cint,(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_keypoints(self)
    ccall((:vl_dsift_get_keypoints,libvl),Ptr{VlDsiftKeypoint},(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_bounds(self,minX,minY,maxX,maxY)
    ccall((:vl_dsift_get_bounds,libvl),Void,(Ptr{VlDsiftFilter},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint}),self,minX,minY,maxX,maxY)
end

function vl_dsift_get_steps(self,stepX,stepY)
    ccall((:vl_dsift_get_steps,libvl),Void,(Ptr{VlDsiftFilter},Ptr{Cint},Ptr{Cint}),self,stepX,stepY)
end

function vl_dsift_get_geometry(self)
    ccall((:vl_dsift_get_geometry,libvl),Ptr{VlDsiftDescriptorGeometry},(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_flat_window(self)
    ccall((:vl_dsift_get_flat_window,libvl),vl_bool,(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_window_size(self)
    ccall((:vl_dsift_get_window_size,libvl),Cdouble,(Ptr{VlDsiftFilter},),self)
end

function _vl_dsift_update_buffers(self)
    ccall((:_vl_dsift_update_buffers,libvl),Void,(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_descriptor_size(self)
    ccall((:vl_dsift_get_descriptor_size,libvl),Cint,(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_descriptors(self)
    ccall((:vl_dsift_get_descriptors,libvl),Ptr{Cfloat},(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_keypoints(self)
    ccall((:vl_dsift_get_keypoints,libvl),Ptr{VlDsiftKeypoint},(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_keypoint_num(self)
    ccall((:vl_dsift_get_keypoint_num,libvl),Cint,(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_geometry(self)
    ccall((:vl_dsift_get_geometry,libvl),Ptr{VlDsiftDescriptorGeometry},(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_bounds(self,minX,minY,maxX,maxY)
    ccall((:vl_dsift_get_bounds,libvl),Void,(Ptr{VlDsiftFilter},Ptr{Cint},Ptr{Cint},Ptr{Cint},Ptr{Cint}),self,minX,minY,maxX,maxY)
end

function vl_dsift_get_flat_window(self)
    ccall((:vl_dsift_get_flat_window,libvl),Cint,(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_steps(self,stepX,stepY)
    ccall((:vl_dsift_get_steps,libvl),Void,(Ptr{VlDsiftFilter},Ptr{Cint},Ptr{Cint}),self,stepX,stepY)
end

function vl_dsift_set_steps(self,stepX::Integer,stepY::Integer)
    ccall((:vl_dsift_set_steps,libvl),Void,(Ptr{VlDsiftFilter},Cint,Cint),self,stepX,stepY)
end

function vl_dsift_set_bounds(self,minX::Integer,minY::Integer,maxX::Integer,maxY::Integer)
    ccall((:vl_dsift_set_bounds,libvl),Void,(Ptr{VlDsiftFilter},Cint,Cint,Cint,Cint),self,minX,minY,maxX,maxY)
end

function vl_dsift_set_geometry(self,geom)
    ccall((:vl_dsift_set_geometry,libvl),Void,(Ptr{VlDsiftFilter},Ptr{VlDsiftDescriptorGeometry}),self,geom)
end

function vl_dsift_set_flat_window(self,useFlatWindow::Integer)
    ccall((:vl_dsift_set_flat_window,libvl),Void,(Ptr{VlDsiftFilter},vl_bool),self,useFlatWindow)
end

function vl_dsift_transpose_descriptor(dst,src,numBinT::Integer,numBinX::Integer,numBinY::Integer)
    ccall((:vl_dsift_transpose_descriptor,libvl),Void,(Ptr{Cfloat},Ptr{Cfloat},Cint,Cint,Cint),dst,src,numBinT,numBinX,numBinY)
end

function vl_dsift_set_window_size(self,windowSize::Cdouble)
    ccall((:vl_dsift_set_window_size,libvl),Void,(Ptr{VlDsiftFilter},Cdouble),self,windowSize)
end

function vl_dsift_get_window_size(self)
    ccall((:vl_dsift_get_window_size,libvl),Cdouble,(Ptr{VlDsiftFilter},),self)
end
