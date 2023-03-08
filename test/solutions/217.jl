function contains_duplicate(nums::Vector{Int})::Bool
    unique_nums = Set(nums)
    return length(nums) != length(unique_nums)
end

# Test cases
@testset "Contains Duplicate Test" begin
    # Example cases
    # Test case 1
    input1 = [1, 2, 3, 1]
    output1 = true
    @test contains_duplicate(input1) == output1
    
    # Test case 2
    input2 = [1, 2, 3, 4]
    output2 = false
    @test contains_duplicate(input2) == output2
    
    # Test case 3
    input3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
    output3 = true
    @test contains_duplicate(input3) == output3
    
    # Additional test cases
    # Test case 4
    input4 = [1, 2, 3, 4, 2]
    output4 = true
    @test contains_duplicate(input4) == output4
    
    # Test case 5
    input5 = [-1, 2, -1, 4, 2]
    output5 = true
    @test contains_duplicate(input5) == output5
    
    # Test case 6
    input6 = [0]
    output6 = false
    @test contains_duplicate(input6) == output6
end
