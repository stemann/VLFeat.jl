# Julia wrapper for header: /home/kevin/src/vlfeat/vl/liop.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_liopdesc_new,
    vl_liopdesc_new_basic,
    vl_liopdesc_delete,
    vl_liopdesc_get_dimension,
    vl_liopdesc_get_num_neighbours,
    vl_liopdesc_get_intensity_threshold,
    vl_liopdesc_get_num_spatial_bins,
    vl_liopdesc_get_neighbourhood_radius,
    vl_liopdesc_set_intensity_threshold,
    vl_liopdesc_process


function vl_liopdesc_new(numNeighbours::vl_int,numSpatialBins::vl_int,radius::Cfloat,sideLength::Integer)
    ccall((:vl_liopdesc_new,libvl),Ptr{VlLiopDesc},(vl_int,vl_int,Cfloat,vl_size),numNeighbours,numSpatialBins,radius,sideLength)
end

function vl_liopdesc_new_basic(sideLength::Integer)
    ccall((:vl_liopdesc_new_basic,libvl),Ptr{VlLiopDesc},(vl_size,),sideLength)
end

function vl_liopdesc_delete(self)
    ccall((:vl_liopdesc_delete,libvl),Void,(Ptr{VlLiopDesc},),self)
end

function vl_liopdesc_get_dimension(self)
    ccall((:vl_liopdesc_get_dimension,libvl),vl_size,(Ptr{VlLiopDesc},),self)
end

function vl_liopdesc_get_num_neighbours(self)
    ccall((:vl_liopdesc_get_num_neighbours,libvl),vl_size,(Ptr{VlLiopDesc},),self)
end

function vl_liopdesc_get_intensity_threshold(self)
    ccall((:vl_liopdesc_get_intensity_threshold,libvl),Cfloat,(Ptr{VlLiopDesc},),self)
end

function vl_liopdesc_get_num_spatial_bins(self)
    ccall((:vl_liopdesc_get_num_spatial_bins,libvl),vl_size,(Ptr{VlLiopDesc},),self)
end

function vl_liopdesc_get_neighbourhood_radius(self)
    ccall((:vl_liopdesc_get_neighbourhood_radius,libvl),Cdouble,(Ptr{VlLiopDesc},),self)
end

function vl_liopdesc_set_intensity_threshold(self,x::Cfloat)
    ccall((:vl_liopdesc_set_intensity_threshold,libvl),Void,(Ptr{VlLiopDesc},Cfloat),self,x)
end

function vl_liopdesc_process(liop,desc,patch)
    ccall((:vl_liopdesc_process,libvl),Void,(Ptr{VlLiopDesc},Ptr{Cfloat},Ptr{Cfloat}),liop,desc,patch)
end
