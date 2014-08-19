# Julia wrapper for header: /home/kevin/src/vlfeat/vl/hog.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_hog_new,
    vl_hog_delete,
    vl_hog_process,
    vl_hog_put_image,
    vl_hog_put_polar_field,
    vl_hog_extract,
    vl_hog_get_height,
    vl_hog_get_width,
    vl_hog_render,
    vl_hog_get_dimension,
    vl_hog_get_permutation,
    vl_hog_get_glyph_size,
    vl_hog_get_use_bilinear_orientation_assignments,
    vl_hog_set_use_bilinear_orientation_assignments


function vl_hog_new(variant::VlHogVariant,numOrientations::Integer,transposed::Integer)
    ccall((:vl_hog_new,libvl),Ptr{VlHog},(VlHogVariant,vl_size,vl_bool),variant,numOrientations,transposed)
end

function vl_hog_delete(self)
    ccall((:vl_hog_delete,libvl),Void,(Ptr{VlHog},),self)
end

function vl_hog_process(self,features,image,width::Integer,height::Integer,numChannels::Integer,cellSize::Integer)
    ccall((:vl_hog_process,libvl),Void,(Ptr{VlHog},Ptr{Cfloat},Ptr{Cfloat},vl_size,vl_size,vl_size,vl_size),self,features,image,width,height,numChannels,cellSize)
end

function vl_hog_put_image(self,image,width::Integer,height::Integer,numChannels::Integer,cellSize::Integer)
    ccall((:vl_hog_put_image,libvl),Void,(Ptr{VlHog},Ptr{Cfloat},vl_size,vl_size,vl_size,vl_size),self,image,width,height,numChannels,cellSize)
end

function vl_hog_put_polar_field(self,modulus,angle,directed::Integer,width::Integer,height::Integer,cellSize::Integer)
    ccall((:vl_hog_put_polar_field,libvl),Void,(Ptr{VlHog},Ptr{Cfloat},Ptr{Cfloat},vl_bool,vl_size,vl_size,vl_size),self,modulus,angle,directed,width,height,cellSize)
end

function vl_hog_extract(self,features)
    ccall((:vl_hog_extract,libvl),Void,(Ptr{VlHog},Ptr{Cfloat}),self,features)
end

function vl_hog_get_height(self)
    ccall((:vl_hog_get_height,libvl),vl_size,(Ptr{VlHog},),self)
end

function vl_hog_get_width(self)
    ccall((:vl_hog_get_width,libvl),vl_size,(Ptr{VlHog},),self)
end

function vl_hog_render(self,image,features,width::Integer,height::Integer)
    ccall((:vl_hog_render,libvl),Void,(Ptr{VlHog},Ptr{Cfloat},Ptr{Cfloat},vl_size,vl_size),self,image,features,width,height)
end

function vl_hog_get_dimension(self)
    ccall((:vl_hog_get_dimension,libvl),vl_size,(Ptr{VlHog},),self)
end

function vl_hog_get_permutation(self)
    ccall((:vl_hog_get_permutation,libvl),Ptr{vl_index},(Ptr{VlHog},),self)
end

function vl_hog_get_glyph_size(self)
    ccall((:vl_hog_get_glyph_size,libvl),vl_size,(Ptr{VlHog},),self)
end

function vl_hog_get_use_bilinear_orientation_assignments(self)
    ccall((:vl_hog_get_use_bilinear_orientation_assignments,libvl),vl_bool,(Ptr{VlHog},),self)
end

function vl_hog_set_use_bilinear_orientation_assignments(self,x::Integer)
    ccall((:vl_hog_set_use_bilinear_orientation_assignments,libvl),Void,(Ptr{VlHog},vl_bool),self,x)
end
