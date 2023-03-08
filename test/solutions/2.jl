function two_sum(nums::Vector{Int}, target::Int)::Vector{Int}
    num_map = Dict()
    for (i, num) in enumerate(nums)
        complement = target - num
        if haskey(num_map, complement)
            return [num_map[complement], i-1] # Note that Julia is 1-indexed, so we need to subtract 1 from i to get the correct index in the output
        end
        num_map[num] = i - 1
    end
end

@testset "two_sum tests" begin
    @test two_sum([2, 7, 11, 15], 9) == [0, 1]
    @test two_sum([3, 2, 4], 6) == [1, 2]
    @test two_sum([3, 3], 6) == [0, 1]
end
