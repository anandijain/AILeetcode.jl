function longest_common_prefix(strs::Vector{String})::String
    if isempty(strs)
        return ""
    end
    
    prefix = ""
    for i in 1:length(strs[1])
        curr_char = strs[1][i]
        for j in 2:length(strs)
            if i > length(strs[j]) || strs[j][i] != curr_char
                return prefix
            end
        end
        prefix *= curr_char
    end
    
    return prefix
end

@testset "longest_common_prefix tests" begin
    @test longest_common_prefix(["flower", "flow", "flight"]) == "fl"
    @test longest_common_prefix(["dog", "racecar", "car"]) == ""
    @test longest_common_prefix(["apple", "application", "apply"]) == "appl"
end
