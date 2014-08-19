# Julia wrapper for header: /home/kevin/src/vlfeat/vl/imopv.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    vl_imconvcol_vf,
    vl_imconvcol_vd,
    vl_imconvcoltri_f,
    vl_imconvcoltri_d,
    vl_imintegral_f,
    vl_imintegral_d,
    vl_imintegral_i32,
    vl_imintegral_ui32,
    vl_image_distance_transform_d,
    vl_image_distance_transform_f,
    vl_imsmooth_f,
    vl_imsmooth_d,
    vl_imgradient_polar_f,
    vl_imgradient_polar_d,
    vl_imgradient_f,
    vl_imgradient_d,
    vl_imgradient_polar_f_callback


function vl_imconvcol_vf(dst,dst_stride::vl_size,src,src_width::vl_size,src_height::vl_size,src_stride::vl_size,filt,filt_begin::vl_index,filt_end::vl_index,step::Integer,flags::Integer)
    ccall((:vl_imconvcol_vf,libvl),Void,(Ptr{Cfloat},vl_size,Ptr{Cfloat},vl_size,vl_size,vl_size,Ptr{Cfloat},vl_index,vl_index,Cint,Uint32),dst,dst_stride,src,src_width,src_height,src_stride,filt,filt_begin,filt_end,step,flags)
end

function vl_imconvcol_vd(dst,dst_stride::vl_size,src,src_width::vl_size,src_height::vl_size,src_stride::vl_size,filt,filt_begin::vl_index,filt_end::vl_index,step::Integer,flags::Integer)
    ccall((:vl_imconvcol_vd,libvl),Void,(Ptr{Cdouble},vl_size,Ptr{Cdouble},vl_size,vl_size,vl_size,Ptr{Cdouble},vl_index,vl_index,Cint,Uint32),dst,dst_stride,src,src_width,src_height,src_stride,filt,filt_begin,filt_end,step,flags)
end

function vl_imconvcoltri_f(dest,destStride::vl_size,image,imageWidth::vl_size,imageHeight::vl_size,imageStride::vl_size,filterSize::vl_size,step::vl_size,flags::Integer)
    ccall((:vl_imconvcoltri_f,libvl),Void,(Ptr{Cfloat},vl_size,Ptr{Cfloat},vl_size,vl_size,vl_size,vl_size,vl_size,Uint32),dest,destStride,image,imageWidth,imageHeight,imageStride,filterSize,step,flags)
end

function vl_imconvcoltri_d(dest,destStride::vl_size,image,imageWidth::vl_size,imageHeight::vl_size,imageStride::vl_size,filterSize::vl_size,step::vl_size,flags::Integer)
    ccall((:vl_imconvcoltri_d,libvl),Void,(Ptr{Cdouble},vl_size,Ptr{Cdouble},vl_size,vl_size,vl_size,vl_size,vl_size,Uint32),dest,destStride,image,imageWidth,imageHeight,imageStride,filterSize,step,flags)
end

function vl_imintegral_f(integral,integralStride::vl_size,image,imageWidth::vl_size,imageHeight::vl_size,imageStride::vl_size)
    ccall((:vl_imintegral_f,libvl),Void,(Ptr{Cfloat},vl_size,Ptr{Cfloat},vl_size,vl_size,vl_size),integral,integralStride,image,imageWidth,imageHeight,imageStride)
end

function vl_imintegral_d(integral,integralStride::vl_size,image,imageWidth::vl_size,imageHeight::vl_size,imageStride::vl_size)
    ccall((:vl_imintegral_d,libvl),Void,(Ptr{Cdouble},vl_size,Ptr{Cdouble},vl_size,vl_size,vl_size),integral,integralStride,image,imageWidth,imageHeight,imageStride)
end

function vl_imintegral_i32(integral,integralStride::vl_size,image,imageWidth::vl_size,imageHeight::vl_size,imageStride::vl_size)
    ccall((:vl_imintegral_i32,libvl),Void,(Ptr{vl_int32},vl_size,Ptr{vl_int32},vl_size,vl_size,vl_size),integral,integralStride,image,imageWidth,imageHeight,imageStride)
end

function vl_imintegral_ui32(integral,integralStride::vl_size,image,imageWidth::vl_size,imageHeight::vl_size,imageStride::vl_size)
    ccall((:vl_imintegral_ui32,libvl),Void,(Ptr{vl_uint32},vl_size,Ptr{vl_uint32},vl_size,vl_size,vl_size),integral,integralStride,image,imageWidth,imageHeight,imageStride)
end

function vl_image_distance_transform_d(image,numColumns::vl_size,numRows::vl_size,columnStride::vl_size,rowStride::vl_size,distanceTransform,indexes,coeff::Cdouble,offset::Cdouble)
    ccall((:vl_image_distance_transform_d,libvl),Void,(Ptr{Cdouble},vl_size,vl_size,vl_size,vl_size,Ptr{Cdouble},Ptr{vl_uindex},Cdouble,Cdouble),image,numColumns,numRows,columnStride,rowStride,distanceTransform,indexes,coeff,offset)
end

function vl_image_distance_transform_f(image,numColumns::vl_size,numRows::vl_size,columnStride::vl_size,rowStride::vl_size,distanceTransform,indexes,coeff::Cfloat,offset::Cfloat)
    ccall((:vl_image_distance_transform_f,libvl),Void,(Ptr{Cfloat},vl_size,vl_size,vl_size,vl_size,Ptr{Cfloat},Ptr{vl_uindex},Cfloat,Cfloat),image,numColumns,numRows,columnStride,rowStride,distanceTransform,indexes,coeff,offset)
end

function vl_imsmooth_f(smoothed,smoothedStride::vl_size,image,width::vl_size,height::vl_size,stride::vl_size,sigmax::Cdouble,sigmay::Cdouble)
    ccall((:vl_imsmooth_f,libvl),Void,(Ptr{Cfloat},vl_size,Ptr{Cfloat},vl_size,vl_size,vl_size,Cdouble,Cdouble),smoothed,smoothedStride,image,width,height,stride,sigmax,sigmay)
end

function vl_imsmooth_d(smoothed,smoothedStride::vl_size,image,width::vl_size,height::vl_size,stride::vl_size,sigmax::Cdouble,sigmay::Cdouble)
    ccall((:vl_imsmooth_d,libvl),Void,(Ptr{Cdouble},vl_size,Ptr{Cdouble},vl_size,vl_size,vl_size,Cdouble,Cdouble),smoothed,smoothedStride,image,width,height,stride,sigmax,sigmay)
end

function vl_imgradient_polar_f(amplitudeGradient,angleGradient,gradWidthStride::vl_size,gradHeightStride::vl_size,image,imageWidth::vl_size,imageHeight::vl_size,imageStride::vl_size)
    ccall((:vl_imgradient_polar_f,libvl),Void,(Ptr{Cfloat},Ptr{Cfloat},vl_size,vl_size,Ptr{Cfloat},vl_size,vl_size,vl_size),amplitudeGradient,angleGradient,gradWidthStride,gradHeightStride,image,imageWidth,imageHeight,imageStride)
end

function vl_imgradient_polar_d(amplitudeGradient,angleGradient,gradWidthStride::vl_size,gradHeightStride::vl_size,image,imageWidth::vl_size,imageHeight::vl_size,imageStride::vl_size)
    ccall((:vl_imgradient_polar_d,libvl),Void,(Ptr{Cdouble},Ptr{Cdouble},vl_size,vl_size,Ptr{Cdouble},vl_size,vl_size,vl_size),amplitudeGradient,angleGradient,gradWidthStride,gradHeightStride,image,imageWidth,imageHeight,imageStride)
end

function vl_imgradient_f(xGradient,yGradient,gradWidthStride::vl_size,gradHeightStride::vl_size,image,imageWidth::vl_size,imageHeight::vl_size,imageStride::vl_size)
    ccall((:vl_imgradient_f,libvl),Void,(Ptr{Cfloat},Ptr{Cfloat},vl_size,vl_size,Ptr{Cfloat},vl_size,vl_size,vl_size),xGradient,yGradient,gradWidthStride,gradHeightStride,image,imageWidth,imageHeight,imageStride)
end

function vl_imgradient_d(xGradient,yGradient,gradWidthStride::vl_size,gradHeightStride::vl_size,image,imageWidth::vl_size,imageHeight::vl_size,imageStride::vl_size)
    ccall((:vl_imgradient_d,libvl),Void,(Ptr{Cdouble},Ptr{Cdouble},vl_size,vl_size,Ptr{Cdouble},vl_size,vl_size,vl_size),xGradient,yGradient,gradWidthStride,gradHeightStride,image,imageWidth,imageHeight,imageStride)
end

function vl_imgradient_polar_f_callback(sourceImage,sourceImageWidth::Integer,sourceImageHeight::Integer,dstImage,dstWidth::Integer,dstHeight::Integer,octave::Integer,level::Integer,params)
    ccall((:vl_imgradient_polar_f_callback,libvl),Void,(Ptr{Cfloat},Cint,Cint,Ptr{Cfloat},Cint,Cint,Cint,Cint,Ptr{Void}),sourceImage,sourceImageWidth,sourceImageHeight,dstImage,dstWidth,dstHeight,octave,level,params)
end
