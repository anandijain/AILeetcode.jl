longest_common_prefix_str = """
Write a function to find the longest common prefix string amongst an array of strings.

    If there is no common prefix, return an empty string "".
    
     
    
    Example 1:
    
    Input: strs = ["flower","flow","flight"]
    Output: "fl"
    Example 2:
    
    Input: strs = ["dog","racecar","car"]
    Output: ""
    Explanation: There is no common prefix among the input strings.
     
    
    Constraints:
    
    1 <= strs.length <= 200
    0 <= strs[i].length <= 200
    strs[i] consists of only lowercase English letters.

    $PROMPT
    
    """
function longest_common_prefix(strs::Vector{String})
    if isempty(strs)
        return ""
    elseif length(strs) == 1
        return strs[1]
    end
    prefix = ""
    for i in 1:length(strs[1])
        char = strs[1][i]
        for j in 2:length(strs)
            if i > length(strs[j]) || strs[j][i] != char
                return prefix
            end
        end
        prefix *= char
    end
    return prefix
end
@testset "longest_common_prefix" begin
    @test longest_common_prefix(["flower", "flow", "flight"]) == "fl"
    @test longest_common_prefix(["dog", "racecar", "car"]) == ""
    @test longest_common_prefix(["abcd", "abce", "abcf"]) == "abc"
    @test longest_common_prefix(["hello", "hell", "heaven"]) == "he"
    @test longest_common_prefix(["", "abc"]) == ""
end


c = getc(chat(longest_common_prefix_str))


bs = get_julia_code_blocks(c)
println.(bs)
@. eval(Meta.parse(bs))
evaluate_leetcode_solution(c)
