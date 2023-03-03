function merge(nums1::Vector{Int}, m::Int, nums2::Vector{Int}, n::Int)::Nothing
    i, j, k = m, n, m + n
    while i > 0 && j > 0
        if nums1[i] > nums2[j]
            nums1[k] = nums1[i]
            i -= 1
        else
            nums1[k] = nums2[j]
            j -= 1
        end
        k -= 1
    end
    while j > 0
        nums1[k] = nums2[j]
        j -= 1
        k -= 1
    end
end

@testset "merge" begin
    nums1 = [1,2,3,0,0,0]
    merge(nums1, 3, [2,5,6], 3)
    @test nums1 == [1,2,2,3,5,6]
    
    nums2 = Int[]
    merge(nums2, 0, Int[], 0)
    @test nums2 == []
    
    nums3 = [0]
    merge(nums3, 0, [1], 1)
    @test nums3 == [1]
end


nums1 = [1,2,3,0,0,0]
@edit merge(nums1, 3, [2,5,6], 3)