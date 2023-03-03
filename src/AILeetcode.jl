module AILeetcode

const PROMPT = "solve this in julia, remember julia is one indexed, return two code blocks, the first is the function definition, the second are the test cases"

function get_julia_code_blocks(markdown::AbstractString)
    blocks = Vector{String}()
    mdlines = split(markdown, "\n")
    in_block = false
    curr_block = ""
    for line in mdlines
        if startswith(line, "```julia")
            in_block = true
            curr_block = ""
        elseif startswith(line, "```")
            in_block = false
            push!(blocks, curr_block)
        end
        if in_block && !startswith(line, "```julia")
            curr_block *= line * "\n"
        end
    end
    return blocks
end

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

export get_julia_code_blocks, evaluate_leetcode_solution
export PROMPT

end # module AILeetcode
