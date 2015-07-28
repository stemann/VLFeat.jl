# VLFeat

[![Build Status](https://travis-ci.org/IHPostal/VLFeat.jl.svg?branch=master)](https://travis-ci.org/IHPostal/VLFeat.jl)

Julia wrapping of VLFeat library.

## Installation
Using the Julia package manager,
```julia
Pkg.clone("https://github.com/IHPostal/VLFeat.jl.git")
Pkg.build("VLFeat")
```

## Status
At this point

1. C functions are wrapped
2. `vl_hog(image)` provides a hog descriptor hierarchy of an array or Image object.

Note that VLFeat seems to assume that Images are Float32 and stored as (color, row, col).

`vl_hog` will do basic conversion automatically.

## Contributors
* [Kevin Squire](https://github.com/kmsquire)
* [Jesper Stemann Andersen](https://github.com/stemann)

In addition, see [contributors](https://github.com/IHPostal/VLFeat.jl/graphs/contributors).
