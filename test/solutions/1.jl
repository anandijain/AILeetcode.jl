function two_sum(nums::Vector{Int}, target::Int)::Vector{Int}
    seen = Dict()
    for i in eachindex(nums)
        complement = target - nums[i]
        if haskey(seen, complement)
            return [seen[complement], i]
        end
        seen[nums[i]] = i
    end
    error("No such two integers found")
end

@testset "Two Sum Tests" begin
    @test two_sum([2,7,11,15], 9) == [1, 2]
    @test two_sum([3,2,4], 6) == [2, 3]
    @test two_sum([3,3], 6) == [1, 2]
end
