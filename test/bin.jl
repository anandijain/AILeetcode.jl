using OpenAIReplMode
using AILeetcode
using Test, SafeTestsets
using JSON3, CSV, DataFrames
datadir = joinpath(@__DIR__, "..", "data")
soldir = joinpath(@__DIR__, "solutions")
getfn(fn) = splitext(basename(fn))[1] # add this to startup

fns = readdir(datadir; join=true)
fn = fns[1]
# bs = codeblocks(resp)
# c = getc(resp)
# for now going to do ["c++", "python3", "typescript", "rust"]
langs = juliaDict = Dict("c" => ".c",
    "c#" => ".cs",
    "c++" => ".cpp",
    "go" => ".go",
    "javascript" => ".js",
    "lua" => ".lua",
    "perl" => ".pl",
    "python" => ".py",
    "r" => ".r",
    "ruby" => ".rb",
    "rust" => ".rs",
    "scala" => ".scala",
    "swift" => ".swift",
    "typescript" => ".ts",
    "julia" => ".jl")

langs = ["c++", "java", "python3", "c", "c#", "javascript", "ruby", "swift", "go", "scala", "kotlin", "rust", "php", "typescript", "racket", "erlang", "elixir", "dart"]
mylangs = Dict("c++" => ".cpp", "python3" => ".py", "typescript" => ".ts", "rust" => ".rs")
lang = "c++"
instruct_prompt = """
\n\n solve using $lang and include the test cases. always return the function and tests together. 
always return the exactly one codeblock in ```$lang CODE ```

"""
function do_one(fn)
    prompt = read(fn, String) * instruct_prompt
    resp = replchat(prompt)
    # chat_show(resp)
    cs = to_code_str(resp; prefix="```$lang")

    # ex = Meta.parseall(cs)

    # eval(ex)
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
    sd = joinpath(@__DIR__, lang)
    write(joinpath(sd, getfn(fn) * langs[lang]), cs)
end

x = cd(joinpath(@__DIR__, "rust/tests/")) do
    read(`cargo test -- -Z unstable-options --format=json`, String)

end

do_one(fns[1])
g, b = goodbad(do_one, fns)


rs_fns = readdir("$(@__DIR__)/rust/tests"; join=true)
rfns = getfn.(rs_fns)
read(cmds[1], String)
p = "/Users/anand/.julia/dev/AILeetcode/test/rust/"
ss = []
cd(p) do
    for fn in rfns
        cmd = `cargo test --test $(fn) -- -Z unstable-options --format=json`
        @info cmd
        try
            # foo = "[" * read(cmd, String) * "]"
            foo = read(cmd, String)
            js = JSON3.read.(split(foo, "\n")[1:end-1])
            j = js[findfirst(x -> haskey(x, :exec_time), js)]
            push!(ss, fn => j)
        catch
        end
    end
end
nts = []
for (fn, j) in ss
    # j = js[end]
    d = Dict(j)
    d[:id] = fn
    nt = namedtuple(d)
    push!(nts, nt)

end
df = DataFrame(nts)
df = df[!, Cols(:id, Not(:id))]

rs_passed(row) = row.failed == 0 && row.passed > 0

pdf = df[map(rs_passed, eachrow(df)), :]
nrow(pdf), length(rs_fns)

p = "/Users/anand/.julia/dev/AILeetcode/data/starter"
js = @. JSON3.read(read(p))
using JSON3
using StatsBase
fns = readdir(p;join=true)
js = @. JSON3.read(read(fns))
counts = mergewith(+, Dict.(tally.(map(x->string.(x), @. ck(js))))...)