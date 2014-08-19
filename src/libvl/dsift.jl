# Julia wrapper for header: /home/kevin/src/vlfeat/vl/dsift.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_dsift_get_keypoints,
    vl_dsift_get_geometry,
    vl_dsift_get_descriptor_size,
    vl_dsift_get_descriptors,
    vl_dsift_get_keypoint_num,
    vl_dsift_get_bounds,
    vl_dsift_get_flat_window,
    vl_dsift_get_steps,
    vl_dsift_set_steps,
    vl_dsift_set_bounds,
    vl_dsift_set_geometry,
    vl_dsift_set_flat_window,
    vl_dsift_set_window_size


function vl_dsift_get_keypoints(self)
    ccall((:vl_dsift_get_keypoints,libvl),Ptr{Cint},(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_geometry(self)
    ccall((:vl_dsift_get_geometry,libvl),Ptr{Cint},(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_descriptor_size(self)
    ccall((:vl_dsift_get_descriptor_size,libvl),Cint,(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_descriptors(self)
    ccall((:vl_dsift_get_descriptors,libvl),Ptr{Cfloat},(Ptr{VlDsiftFilter},),self)
end

function vl_dsift_get_keypoint_num(self)
    ccall((:vl_dsift_get_keypoint_num,libvl),Cint,(Ptr{VlDsiftFilter},),self)
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

function vl_dsift_set_flat_window(self,useFlatWindow::vl_bool)
    ccall((:vl_dsift_set_flat_window,libvl),Void,(Ptr{VlDsiftFilter},vl_bool),self,useFlatWindow)
end

function vl_dsift_set_window_size(self,windowSize::Cdouble)
    ccall((:vl_dsift_set_window_size,libvl),Void,(Ptr{VlDsiftFilter},Cdouble),self,windowSize)
end
