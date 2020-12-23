# See: https://github.com/JuliaCI/BenchmarkTools.jl/blob/master/doc/manual.md#the-benchmarkgroup-type

"""
Add benchmarks like so:

```julia
BenchmarkSuite = BenchmarkGroup()
BenchmarkSuite[:turing] = BenchmarkGroup()
BenchmarkSuite[:turing]["GMM (N=100, K=4)"] = @benchmarkable sin(10)
```

Run benchmarks like so:
```julia
results = run(BenchmarkSuite, verbose=true, samples=5, evals=1)
```
"""
const BenchmarkSuite = BenchmarkGroup()

benchmark_turing(model, alg, nsamps; seed=0) = @benchmarkable let
  Random.seed!(0)
  sample(model, alg, nsamps, progress=false)
end

function benchmark_soss end
function benchmark_gen end
function benchmark_stan end
function benchmark_pyro end
function benchmark_numpyro end
function benchmark_tfp end
