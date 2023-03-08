function threeSum(nums::Array{Int64,1})::Array{Array{Int64,1},1}
    result = []
    n = length(nums)
    sort!(nums)
    for i in 1:n-2
        if i > 1 && nums[i] == nums[i-1]
            continue
        end
        left_ptr = i + 1
        right_ptr = n
        while left_ptr < right_ptr
            sum = nums[i] + nums[left_ptr] + nums[right_ptr]
            if sum == 0
                push!(result, [nums[i], nums[left_ptr], nums[right_ptr]])
                left_ptr += 1
                right_ptr -= 1
                while left_ptr < right_ptr && nums[left_ptr] == nums[left_ptr-1]
                    left_ptr += 1
                end
                while left_ptr < right_ptr && nums[right_ptr] == nums[right_ptr+1]
                    right_ptr -= 1
                end
            elseif sum < 0
                left_ptr += 1
            else
                right_ptr -= 1
            end
        end
    end
    return result
end


@testset "threeSum tests" begin
    # Test case 1
    nums = [-1, 0, 1, 2, -1, -4]
    expected_output = [[-1, -1, 2], [-1, 0, 1]]
    @test threeSum(nums) == expected_output
    
    # Test case 2
    nums = [0, 1, 1]
    expected_output = []
    @test threeSum(nums) == expected_output
    
    # Test case 3
    nums = [0, 0, 0]
    expected_output = [[0, 0, 0]]
    @test threeSum(nums) == expected_output
end
