using OpenAIReplMode
using AILeetcode
using Test, SafeTestsets

datadir = joinpath(@__DIR__, "..", "data")
soldir = joinpath(@__DIR__, "solutions")
fns = readdir(datadir; join=true)
getfn(fn) = splitext(basename(fn))[1] # add this to startup
fn = fns[1]
# bs = codeblocks(resp)
# c = getc(resp)
jl_prompt = """
\n\n solve using julia and include the test cases in an `@testset` block. always return the function and tests together. 
always return the exactly one codeblock in ```julia CODE ```
"""
do_one_fn(fn) = do_one(read(fn, String) * jl_prompt)

function do_one(prompt)

    resp = chat(prompt)
    # chat_show(resp)
    cs = to_code_str(resp)
    ex = Meta.parseall(cs)

    eval(ex)
    # res = try
    # catch e
    #     # here is where we loop back to chat with the testset results 
    #     # while loop
    #     e, current_exceptions()
    #     # more = "\n" * join(repr.(e.errors_and_fails), "\n")
    #     # resp2 = chat(prompt * zmore)
    #     # chat_show(resp2)
    #     # cs = to_code_str(resp2)
    #     rethrow(e)
    # end
    write(joinpath(soldir, getfn(fn) * ".jl"), cs)
end

g, b = goodbad(do_one_fn, fns[1:20])

sol_fns = readdir(soldir; join=true)

g2, b2 = goodbad(include, sol_fns)
G = filter(x -> x[2] isa Test.AbstractTestSet, g2)

# these ones passed 
# julia> first.(first.(G))
# 9-element Vector{Int64}:
#   3
#   4
#   5
#   6
#   8
#   9
#  11
#  12
#  13

