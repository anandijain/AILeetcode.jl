function single_number(nums::Vector{Int})::Int
    result = 0
    for num in nums
        result = result ⊻ num
    end
    return result
end

@testset "Single Number Tests" begin
    # Example 1
    nums1 = [2, 2, 1]
    expected_output1 = 1
    @test single_number(nums1) == expected_output1
    
    # Example 2
    nums2 = [4, 1, 2, 1, 2]
    expected_output2 = 4
    @test single_number(nums2) == expected_output2
    
    # Example 3
    nums3 = [1]
    expected_output3 = 1
    @test single_number(nums3) == expected_output3
    
    # Custom Test 1
    nums4 = [-1, 2, 2, -1, 3]
    expected_output4 = 3
    @test single_number(nums4) == expected_output4
    
    # Custom Test 2
    nums5 = [0, 0, -9, -9, 10]
    expected_output5 = 10
    @test single_number(nums5) == expected_output5
    
    # Custom Test 3
    nums6 = [100, -10, 7, -10, 100]
    expected_output6 = 7
    @test single_number(nums6) == expected_output6
end
