function longest_common_prefix(strs::Vector{String})::String
    if isempty(strs)
        return ""
    end
    prefix = strs[1]
    for i in 2:length(strs)
        while !startswith(strs[i], prefix)
            prefix = prefix[1:end-1]
            if isempty(prefix)
                return ""
            end
        end
    end
    return prefix
end

@testset "Longest Common Prefix Tests" begin
    # Example 1
    strs1 = ["flower","flow","flight"]
    expected_output1 = "fl"
    @test longest_common_prefix(strs1) == expected_output1
    
    # Example 2
    strs2 = ["dog","racecar","car"]
    expected_output2 = ""
    @test longest_common_prefix(strs2) == expected_output2
    
    # Custom Test 1
    strs3 = ["abcd", "abcde", "abc"]
    expected_output3 = "abc"
    @test longest_common_prefix(strs3) == expected_output3
    
    # Custom Test 2
    strs4 = ["race", "racecar", "racetrack"]
    expected_output4 = "race"
    @test longest_common_prefix(strs4) == expected_output4
    
    # Custom Test 3
    strs5 = ["", "cat", "car", "caterpillar"]
    expected_output5 = ""
    @test longest_common_prefix(strs5) == expected_output5
end
