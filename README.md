# VLFeat.jl

[![Build Status](https://github.com/IHPSystems/VLFeat.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/IHPSystems/VLFeat.jl/actions/workflows/CI.yml?query=branch%3Amaster)
[![Coverage](https://codecov.io/gh/IHPSystems/VLFeat.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/IHPSystems/VLFeat.jl)
[![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)

Julia wrapper for the [VLFeat](http://www.vlfeat.org) library.

## Status
At this point

1. C functions are wrapped
2. `vl_hog(image)` provides a HOG descriptor hierarchy of an array or Image object.
3. `f,d = vl_sift(image)` computes SIFT features and descriptors for an image.

Note that VLFeat seems to assume that Images are Float32 and stored as (color, row, col).

`vl_hog` will do basic conversion automatically.
