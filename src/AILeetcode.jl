module AILeetcode

PROMPT = """
solve the above in julia, remember julia is one indexed
return exactly two code blocks. the first is the function definition, the second are the test cases wrapped in a testset
"""

function get_julia_code_blocks(markdown::AbstractString;prefix="```julia")
    blocks = Vector{String}()
    mdlines = split(markdown, "\n")
    in_block = false
    curr_block = ""
    for line in mdlines
        if startswith(line, prefix)
            in_block = true
            curr_block = ""
        elseif startswith(line, "```")
            in_block = false
            push!(blocks, curr_block)
        end
        if in_block && !startswith(line, prefix)
            curr_block *= line * "\n"
        end
    end
    return blocks
end
# cbs = get_julia_code_blocks
codeblocks = get_julia_code_blocks
# codeblocks() = codeblocks(ans)

function evaluate_leetcode_solution(markdown::AbstractString)
    # Split markdown into code blocks
    code_blocks = get_julia_code_blocks(markdown)

    # Evaluate first code block
    first_block = code_blocks[1]
    eval(Meta.parse(first_block))

    # Evaluate each @test in second code block
    test_block = code_blocks[2]
    eval(Meta.parse(test_block))

end

getc(x) = x.choices[1].message.content


export get_julia_code_blocks, evaluate_leetcode_solution, getc
export PROMPT

end # module AILeetcode
