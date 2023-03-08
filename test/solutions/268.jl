function missing_number(nums::Vector{Int})::Int
    n = length(nums)
    total_sum = (n*(n+1))÷2 # sum of natural numbers from 0 to n
    
    current_sum = sum(nums) # sum of elements in nums
    
    return total_sum - current_sum # difference is the missing number
end

# Test cases
@testset "Missing Number Test" begin
    # Example cases
    # Test case 1
    nums1 = [3,0,1]
    expected_output1 = 2
    @test missing_number(nums1) == expected_output1
    
    # Test case 2
    nums2 = [0,1]
    expected_output2 = 2
    @test missing_number(nums2) == expected_output2
    
    # Test case 3
    nums3 = [9,6,4,2,3,5,7,0,1]
    expected_output3 = 8
    @test missing_number(nums3) == expected_output3
    
    # Additional test cases
    # Test case 4
    nums4 = [0]
    expected_output4 = 1
    @test missing_number(nums4) == expected_output4
    
    # Test case 5
    nums5 = [1]
    expected_output5 = 0
    @test missing_number(nums5) == expected_output5
    
    # Test case 6
    nums6 = [0,2,3]
    expected_output6 = 1
    @test missing_number(nums6) == expected_output6
    
    # Test case 7
    nums7 = [0,1,2,3,5]
    expected_output7 = 4
    @test missing_number(nums7) == expected_output7
end
