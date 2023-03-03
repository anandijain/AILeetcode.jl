function remove_duplicates(nums::Vector{Int})::Int
    k = 1
    for i in 2:length(nums)
        if nums[i] != nums[k]
            k += 1
            nums[k] = nums[i]
        end
    end
    k
end

@testset "remove_duplicates" begin
    nums = [1,1,2]
    expected = [1,2]
    k = remove_duplicates(nums)
    @test k == 2
    @test nums[1:k] == expected
    
    nums = [0,0,1,1,1,2,2,3,3,4]
    expected = [0,1,2,3,4]
    k = remove_duplicates(nums)
    @test k == 5
    @test nums[1:k] == expected
    
    nums = [1,1,1,1,1]
    expected = [1]
    k = remove_duplicates(nums)
    @test k == 1
    @test nums[1:k] == expected
end
