using OpenAIReplMode
using AILeetcode
using Test, SafeTestsets

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

# @safetestset "1" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/1.jl")
# end
# @safetestset "2" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/101.jl")
# end
# @safetestset "3" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/11.jl")
# end
# @safetestset "4" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/118.jl")
# end
# @safetestset "5" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/121.jl")
# end
# @safetestset "6" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/13.jl")
# end
# @safetestset "7" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/136.jl")
# end
# @safetestset "8" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/14.jl")
# end
# @safetestset "9" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/15.jl")
# end
# @safetestset "10" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/163.jl")
# end
# @safetestset "11" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/169.jl")
# end
# @safetestset "12" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/171.jl")
# end
# @safetestset "13" begin
#     include("/Users/anand/.julia/dev/AILeetcode/test/solutions/190.jl")
# end