function singleNumber(nums)
    """
    Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

    # Arguments:
    nums: Array{Int} -- an array of numbers in which every element appears twice except for one.

    # Returns:
    Int -- the number which appears only once.
    """
    single = 0
    for num in nums
        single = single ⊕ num
    end
    return single
end


# Run tests
@testset "singleNumber function" begin
    @test singleNumber([2,2,1]) == 1
    @test singleNumber([4,1,2,1,2]) == 4
    @test singleNumber([1]) == 1
end
