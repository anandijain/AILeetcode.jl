function longestCommonPrefix(strs::Array{String,1})::AbstractString
    n = length(strs)
    if n == 0
        return ""
    elseif n == 1
        return strs[1]
    end
    min_len = minimum(length.(strs))
    common_prefix = ""
    for i in 1:min_len
        char_to_match = strs[1][i]
        for j in 2:n
            if strs[j][i] != char_to_match
                return common_prefix
            end
        end
        common_prefix *= char_to_match
    end
    return common_prefix
end


@testset "longestCommonPrefix tests" begin
    # Test case 1
    strs = ["flower", "flow", "flight"]
    expected_output = "fl"
    @test longestCommonPrefix(strs) == expected_output
    
    # Test case 2
    strs = ["dog", "racecar", "car"]
    expected_output = ""
    @test longestCommonPrefix(strs) == expected_output
    
    # Test case 3
    strs = ["test", "testing", "testable"]
    expected_output = "test"
    @test longestCommonPrefix(strs) == expected_output
end
