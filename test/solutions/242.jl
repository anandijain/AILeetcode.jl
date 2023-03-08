function is_anagram(s::String, t::String)::Bool
    # Edge case
    if length(s) != length(t)
        return false
    end
    
    # Create a dictionary to store count of characters in s
    s_dict = Dict{Char,Int}()
    for c in s
        if haskey(s_dict, c)
            s_dict[c] += 1
        else
            s_dict[c] = 1
        end
    end
    
    # Check if characters in t are present in s_dict and have same count
    for c in t
        if haskey(s_dict, c) && s_dict[c] > 0
            s_dict[c] -= 1
        else
            return false
        end
    end
    
    return true
end

# Test cases
@testset "Is Anagram Test" begin
    # Example cases
    # Test case 1
    s1, t1 = "anagram", "nagaram"
    @test is_anagram(s1, t1) == true
    
    # Test case 2
    s2, t2 = "rat", "car"
    @test is_anagram(s2, t2) == false
    
    # Additional test cases
    # Test case 3
    s3, t3 = "cinema", "iceman"
    @test is_anagram(s3, t3) == true
    
    # Test case 4
    s4, t4 = "listen", "silent"
    @test is_anagram(s4, t4) == true
    
    # Test case 5
    s5, t5 = "", ""
    @test is_anagram(s5, t5) == true
end
