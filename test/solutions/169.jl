function majorityElement(nums::Array{Int})::Int
    candidate = 0
    count = 0
    
    for num in nums
        if count == 0
            candidate = num
            count += 1
        elseif candidate == num
            count += 1
        else
            count -= 1
        end
    end
    
    return candidate
end

@testset "Majority Element Tests" begin
    # Example cases
    nums1 = [3,2,3]
    expected1 = 3
    @test majorityElement(nums1) == expected1
    
    nums2 = [2,2,1,1,1,2,2]
    expected2 = 2
    @test majorityElement(nums2) == expected2
    
    # Array with odd length and single majority element
    nums3 = [1, 2, 3, 3, 3, 3, 3, 3, 3]
    expected3 = 3
    @test majorityElement(nums3) == expected3
    
    # Array with even length and single majority element
    nums4 = [1, 1, 4, 4, 4, 4]
    expected4 = 4
    @test majorityElement(nums4) == expected4
    
    # Array with multiple majority elements
    nums5 = [1, 1, 2, 2, 3, 3, 3]
    expected5 = 3
    @test majorityElement(nums5) == expected5
    
    # Array with random elements
    nums6 = rand(1:100, 100)
    fill!(nums6, nums6[rand(1:end)])
    expected6 = nums6[rand(1:end)]
    @test majorityElement(nums6) == expected6
end
