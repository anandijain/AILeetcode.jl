function is_valid(s::AbstractString)::Bool
    stack = []
    bracket_map = Dict(')' => '(', '}' => '{', ']' => '[')
    
    for c in s
        if haskey(bracket_map, c)
            if isempty(stack) || stack[end] != bracket_map[c]
                return false
            end
            pop!(stack)
        else
            push!(stack, c)
        end
    end
    
    return isempty(stack)
end

@testset "is_valid tests" begin
    @test is_valid("()") == true
    @test is_valid("()[]{}") == true
    @test is_valid("(]") == false
    @test is_valid("([)]") == false
    @test is_valid("{[]}") == true
end
