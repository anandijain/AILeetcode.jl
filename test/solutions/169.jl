function majorityElement(nums::Array{Int64,1})::Int64
    count = 0
    candidate = 0
    for num in nums
        if count == 0
            candidate = num
        end
        if num == candidate
            count += 1
        else
            count -= 1
        end
    end
    return candidate
end


@testset "majorityElement tests" begin
    # Test case 1
    nums = [3, 2, 3]
    expected_output = 3
    @test majorityElement(nums) == expected_output
    
    # Test case 2
    nums = [2, 2, 1, 1, 1, 2, 2]
    expected_output = 2
    @test majorityElement(nums) == expected_output
    
    # Test case 3
    nums = [1]
    expected_output = 1
    @test majorityElement(nums) == expected_output
end
