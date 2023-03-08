function max_area_container(height::Vector{Int})::Int
    left_idx = 1
    right_idx = length(height)
    max_area = 0
    
    while left_idx < right_idx
        area = min(height[left_idx], height[right_idx]) * (right_idx - left_idx)
        max_area = max(max_area, area)
        
        if height[left_idx] <= height[right_idx]
            left_idx += 1
        else
            right_idx -= 1
        end
    end
    
    return max_area
end


@testset "Max Area Container Tests" begin
    # Sample Input 1
    height1 = [1,8,6,2,5,4,8,3,7]
    expected_output1 = 49
    @test max_area_container(height1) == expected_output1
    
    # Sample Input 2
    height2 = [1,1]
    expected_output2 = 1
    @test max_area_container(height2) == expected_output2
    
    # Custom Test 1
    height3 = [4, 3, 2, 1, 4]
    expected_output3 = 16
    @test max_area_container(height3) == expected_output3
    
    # Custom Test 2
    height4 = [1, 2, 1]
    expected_output4 = 2
    @test max_area_container(height4) == expected_output4
    
    # Custom Test 3
    height5 = [1, 2, 3, 4]
    expected_output5 = 4
    @test max_area_container(height5) == expected_output5
end
