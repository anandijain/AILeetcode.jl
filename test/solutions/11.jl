function maxArea(height::Array{Int64,1})::Int64
    n = length(height)
    left = 1
    right = n
    max_area = 0
    while left < right
        max_area = max(max_area, (right - left) * min(height[left], height[right]))
        if height[left] < height[right]
            left += 1
        else
            right -= 1
        end
    end
    return max_area
end


@testset "maxArea tests" begin
    # Test case 1
    height = [1, 8, 6, 2, 5, 4, 8, 3, 7]
    expected_output = 49
    @test maxArea(height) == expected_output
    
    # Test case 2
    height = [1, 1]
    expected_output = 1
    @test maxArea(height) == expected_output
    
    # Test case 3
    height = [4, 3, 2, 1, 4]
    expected_output = 16
    @test maxArea(height) == expected_output
    
    # Test case 4
    height = [1, 2, 1]
    expected_output = 2
    @test maxArea(height) == expected_output
end
