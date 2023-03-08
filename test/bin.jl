using OpenAIReplMode
using AILeetcode
using Test, SafeTestsets

datadir = joinpath(@__DIR__, "..", "data")
soldir = joinpath(@__DIR__, "solutions")
getfn(fn) = splitext(basename(fn))[1] # add this to startup

fns = readdir(datadir; join=true)
fn = fns[1]
# bs = codeblocks(resp)
# c = getc(resp)
jl_prompt = """
\n\n solve using julia and include the test cases in an `@testset` block. always return the function and tests together. 
always return the exactly one codeblock in ```julia CODE ```
"""
function do_one(fn)
    prompt = read(fn, String) * jl_prompt
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

g, b = goodbad(do_one, fns)
