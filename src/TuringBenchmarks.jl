module TuringBenchmarks

using Turing
using Distributions
using BenchmarkTools
using PyCall  # ensure this uses a venv. may need a Pkg.build for PyCall.

export BenchmarkSuite
include("benchmark-helpers.jl")

end # module
