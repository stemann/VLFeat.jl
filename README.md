# VLFeat

[![Build Status](https://travis-ci.org/kmsquire/VLFeat.jl.svg?branch=master)](https://travis-ci.org/kmsquire/VLFeat.jl)

Julia wrapping of VLFeat library.

## Installation
Using the Julia package manager,
```julia
Pkg.clone("https://github.com/kmsquire/VLFeat.jl.git")
``` 


## Status
At this point

1. C functions are wrapped
2. `vl_hog(image)` provides a hog descriptor hierarchy of an array or Image object.

Note that VLFeat seems to assume that Images are Float32 and stored as (color, row, col).

`vl_hog` will do basic conversion automatically.
