function move_zeroes(nums::Vector{Int})::Vector{Int}
    n = length(nums)
    zeros_idx = 1
    
    # Shift non-zero elements to the left and keep track of the next available index for 0's
    for i = 1:n
        if nums[i] != 0
            nums[zeros_idx] = nums[i]
            zeros_idx += 1
        end
    end
    
    # Fill the rest with 0's
    for i = zeros_idx:n
        nums[i] = 0
    end
    
    return nums
end

# Test cases
@testset "Move Zeroes Test" begin
    # Example cases
    # Test case 1
    nums1 = [0,1,0,3,12]
    expected_output1 = [1,3,12,0,0]
    @test move_zeroes(nums1) == expected_output1
    
    # Test case 2
    nums2 = [0]
    expected_output2 = [0]
    @test move_zeroes(nums2) == expected_output2
    
    # Additional test cases
    # Test case 3
    nums3 = [1, 2, 3, 0, 0, 0]
    expected_output3 = [1, 2, 3, 0, 0, 0]
    @test move_zeroes(nums3) == expected_output3
    
    # Test case 4
    nums4 = [0, 0, 0, 1, 2, 3]
    expected_output4 = [1, 2, 3, 0, 0, 0]
    @test move_zeroes(nums4) == expected_output4
    
    # Test case 5
    nums5 = [1, 0, 2, 0, 3, 0]
    expected_output5 = [1, 2, 3, 0, 0, 0]
    @test move_zeroes(nums5) == expected_output5
end
