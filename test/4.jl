
function is_valid(s::String)::Bool
    stack = Char[]
    mapping = Dict(")" => "(", "]" => "[", "}" => "{")
    for c in s
        if haskey(mapping, c)
            if isempty(stack) || stack[end] != mapping[c]
                return false
            else
                pop!(stack)
            end
        else
            push!(stack, c)
        end
    end
    isempty(stack)
end


@testset "is_valid" begin
    @test is_valid("()") == true
    @test is_valid("()[]{}") == true
    @test is_valid("(]") == false
    @test is_valid("([{}])") == true
    @test is_valid("{[()]}") == true
    @test is_valid("[[()]]]") == false
end
