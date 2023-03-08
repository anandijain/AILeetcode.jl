using OpenAIReplMode
using AILeetcode, CSV, DataFrames
using Test, SafeTestsets

datadir = joinpath(@__DIR__, "..", "data")
soldir = joinpath(@__DIR__, "solutions")
getfn(fn) = splitext(basename(fn))[1]

function goodbad(f, xs; verbose=false)
    good = []
    bad = []
    for (i, x) in enumerate(xs)
        verbose && @info x
        try
            y = f(x)
            push!(good, (i, x) => y)
        catch e
            push!(bad, (i, x) => e)
        end
    end
    good, bad
end

sol_fns = readdir(soldir; join=true)
g2, b2 = goodbad(include, sol_fns)
# if it returned a TestSet, then it passed and wasn't nothing/empty
G = filter(x -> x[2] isa Test.AbstractTestSet, g2)
ids = parse.(Int, getfn.(last.(first.(G))))
df_fn =joinpath(@__DIR__, "../probs.csv")
df = CSV.read(df_fn, DataFrame)
df_subset = df[findall(x -> x ∈ ids, df.prob_id), :]

tsts = []
for (i, sfn) in enumerate(sol_fns)
    push!(tsts, Base.remove_linenums!(:(@safetestset $i begin
        include($sfn)
    end)))
end
