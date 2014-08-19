# Julia wrapper for header: /home/kevin/src/vlfeat/vl/scalespace.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_scalespacegeometry_is_equal,
    vl_scalespace_get_default_geometry,
    vl_scalespace_new,
    vl_scalespace_new_with_geometry,
    vl_scalespace_new_copy,
    vl_scalespace_new_shallow_copy,
    vl_scalespace_delete,
    vl_scalespace_put_image,
    vl_scalespace_get_geometry,
    vl_scalespace_get_octave_geometry,
    vl_scalespace_get_level,
    vl_scalespace_get_level_const,
    vl_scalespace_get_level_sigma


function vl_scalespacegeometry_is_equal(a::VlScaleSpaceGeometry,b::VlScaleSpaceGeometry)
    ccall((:vl_scalespacegeometry_is_equal,libvl),vl_bool,(VlScaleSpaceGeometry,VlScaleSpaceGeometry),a,b)
end

function vl_scalespace_get_default_geometry(width::Integer,height::Integer)
    ccall((:vl_scalespace_get_default_geometry,libvl),VlScaleSpaceGeometry,(vl_size,vl_size),width,height)
end

function vl_scalespace_new(width::Integer,height::Integer)
    ccall((:vl_scalespace_new,libvl),Ptr{VlScaleSpace},(vl_size,vl_size),width,height)
end

function vl_scalespace_new_with_geometry(geom::VlScaleSpaceGeometry)
    ccall((:vl_scalespace_new_with_geometry,libvl),Ptr{VlScaleSpace},(VlScaleSpaceGeometry,),geom)
end

function vl_scalespace_new_copy(src)
    ccall((:vl_scalespace_new_copy,libvl),Ptr{VlScaleSpace},(Ptr{VlScaleSpace},),src)
end

function vl_scalespace_new_shallow_copy(src)
    ccall((:vl_scalespace_new_shallow_copy,libvl),Ptr{VlScaleSpace},(Ptr{VlScaleSpace},),src)
end

function vl_scalespace_delete(self)
    ccall((:vl_scalespace_delete,libvl),Void,(Ptr{VlScaleSpace},),self)
end

function vl_scalespace_put_image(self,image)
    ccall((:vl_scalespace_put_image,libvl),Void,(Ptr{VlScaleSpace},Ptr{Cfloat}),self,image)
end

function vl_scalespace_get_geometry(self)
    ccall((:vl_scalespace_get_geometry,libvl),VlScaleSpaceGeometry,(Ptr{VlScaleSpace},),self)
end

function vl_scalespace_get_octave_geometry(self,o::vl_index)
    ccall((:vl_scalespace_get_octave_geometry,libvl),VlScaleSpaceOctaveGeometry,(Ptr{VlScaleSpace},vl_index),self,o)
end

function vl_scalespace_get_level(self,o::vl_index,s::vl_index)
    ccall((:vl_scalespace_get_level,libvl),Ptr{Cfloat},(Ptr{VlScaleSpace},vl_index,vl_index),self,o,s)
end

function vl_scalespace_get_level_const(self,o::vl_index,s::vl_index)
    ccall((:vl_scalespace_get_level_const,libvl),Ptr{Cfloat},(Ptr{VlScaleSpace},vl_index,vl_index),self,o,s)
end

function vl_scalespace_get_level_sigma(self,o::vl_index,s::vl_index)
    ccall((:vl_scalespace_get_level_sigma,libvl),Cdouble,(Ptr{VlScaleSpace},vl_index,vl_index),self,o,s)
end
