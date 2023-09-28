
function vl_hog(img::AbstractArray{Float32, N}, hogVariant = VlHogVariantDalalTriggs, num_orientations = 8) where {N}
    @assert colordim(img) == 1

    hog = vl_hog_new(hogVariant, num_orientations, isyfirst(img))
    vl_hog_put_image(hog, data(img), width(img), height(img), N, num_orientations)
    hogWidth = vl_hog_get_width(hog)
    hogHeight = vl_hog_get_height(hog)
    hogDimension = vl_hog_get_dimension(hog)
    hogArray = Array{Float32, 3}(int(hogWidth), int(hogHeight), int(hogDimension))
    vl_hog_extract(hog, data(hogArray))
    vl_hog_delete(hog)

    out = copy(img, hogArray)
    if isa(img, Image)
        out["colordim"] = 3
        out["colorspace"] = "Unknown"
    end
    return out
end

function vl_hog(img::AbstractArray, args...)
    scalei = scaleminmax(Float32, img, 0.0f0, 1.0f0)
    return vl_hog(scale(scalei, img), args...)
end
