function first_index(haystack::String, needle::String)::Int
    n = length(needle)
    m = length(haystack)
    
    # Edge cases
    if n == 0 # Empty needle
        return 0
    elseif m == 0 # Empty haystack
        return -1
    end
    
    # Search for needle in haystack
    for i = 1:(m-n+1)
        if haystack[i:i+n-1] == needle # Found needle in haystack
            return i-1 # Return index of first occurrence
        end
    end
    
    return -1 # Needle not found in haystack
end

# Test cases
@testset "Find First Index Test" begin
    # Example cases
    # Test case 1
    haystack1 = "sadbutsad"
    needle1 = "sad"
    expected_output1 = 0
    @test first_index(haystack1, needle1) == expected_output1
    
    # Test case 2
    haystack2 = "leetcode"
    needle2 = "leeto"
    expected_output2 = -1
    @test first_index(haystack2, needle2) == expected_output2
    
    # Additional test cases
    # Test case 3
    haystack3 = "hello world"
    needle3 = "world"
    expected_output3 = 6
    @test first_index(haystack3, needle3) == expected_output3
    
    # Test case 4
    haystack4 = "sunshine"
    needle4 = "sun"
    expected_output4 = 0
    @test first_index(haystack4, needle4) == expected_output4
    
    # Test case 5
    haystack5 = "jupyter"
    needle5 = "jup"
    expected_output5 = 0
    @test first_index(haystack5, needle5) == expected_output5
    
    # Test case 6
    haystack6 = "apple"
    needle6 = "orange"
    expected_output6 = -1
    @test first_index(haystack6, needle6) == expected_output6
    
    # Test case 7
    haystack7 = "aaaaaaa"
    needle7 = "aaa"
    expected_output7 = 0
    @test first_index(haystack7, needle7) == expected_output7
end
