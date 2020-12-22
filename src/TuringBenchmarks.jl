module TuringBenchmarks

include("abstract-types.jl")

# Julia experiments.
include("experiments/turing-experiment.jl")
include("experiments/soss-experiment.jl")
include("experiments/gen-experiment.jl")

# Python experiments.
include("experiments/stan-experiment.jl")
include("experiments/pyro-experiment.jl")
include("experiments/numpyro-experiment.jl")
include("experiments/tfp-experiment.jl")

# R experiments.
include("experiments/nimble-experiment.jl")

end # module
