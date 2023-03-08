using OpenAIReplMode
using OpenAIReplMode: chat
using AILeetcode
fns = readdir(_data(""); join=true)
fn = fns[1]
i = 1
for (i, fn) in enumerate(fns)

end

function do_one(fn)
    @info "" i fn
    julianame = joinpath(@__DIR__, "solutions", splitext(basename(fn))[1] * ".jl")
    contents = read(fn, String) * '\n' * PROMPT
    bs = get_julia_code_blocks(getc(chat(contents)))
    code_str = join(bs, '\n')
    write(julianame, code_str)
    julianame
end
do_one(fns[2])

do_one("/Users/anand/.julia/dev/AILeetcode/data/2.txt")
do_one("/Users/anand/.julia/dev/AILeetcode/data/18.txt")

for fn in "/Users/anand/.julia/dev/AILeetcode/data/" .* string.([2,18,20,28,30,78]) .* ".txt"
    do_one(fn)
end

1. Two Sum
13. Roman to Integer
14. Longest Common Prefix => 20
20. Valid Parentheses => 28
21. Merge Two Sorted Lists
35. Search Insert Position
70. Climbing Stairs
94. Binary Tree Inorder Traversal
101. Symmetric Tree
