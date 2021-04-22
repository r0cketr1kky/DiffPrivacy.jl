# DiffPrivacy.jl 🔐

[![Build Status](https://travis-ci.com/r0cketr1kky/DiffPrivacy.jl.svg?branch=master)](https://travis-ci.com/r0cketr1kky/DiffPrivacy.jl)


A library to implement Differential Privacy techniques over statistical databases in Julia

DiffPrivacy.jl makes it easier to implement noise in statistical databases to perform a sensitive query. 
<br/>
This library brings both Julia's crytographic community and statistics community together.


## Installation

```julia
Pkg.add("DiffPrivacy")
```


## Usage


```julia

julia> using DiffPrivacy

julia> DiffPrivacy.sum_sensitivity([1,3,5,7])
7
```
