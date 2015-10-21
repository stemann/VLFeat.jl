# VLFeat.jl

Linux, OS X | Windows
----------- | -------
[![Build Status](https://travis-ci.org/IHPostal/VLFeat.jl.svg?branch=master)](https://travis-ci.org/IHPostal/VLFeat.jl) | [![Build status](https://ci.appveyor.com/api/projects/status/29bm43b2e54c2b86/branch/master?svg=true)](https://ci.appveyor.com/project/stemann/vlfeat-jl/branch/master)

Julia wrapper for the [VLFeat](http://www.vlfeat.org) library.

## Installation
Using the Julia package manager,
```julia
Pkg.add("VLFeat")
```
or install the latest master from this repository,
```julia
Pkg.clone("https://github.com/IHPostal/VLFeat.jl.git")
Pkg.build("VLFeat")
```

## Status
At this point

1. C functions are wrapped
2. `vl_hog(image)` provides a HOG descriptor hierarchy of an array or Image object.
3. `f,d = vl_sift(image)` computes SIFT features and descriptors for an image.

Note that VLFeat seems to assume that Images are Float32 and stored as (color, row, col).

`vl_hog` will do basic conversion automatically.

## Contributors
* [Kevin Squire](https://github.com/kmsquire) (main author)
* [Jesper Stemann Andersen](https://github.com/stemann)

In addition, see [contributors](https://github.com/IHPostal/VLFeat.jl/graphs/contributors).
