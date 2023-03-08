function climb_stairs(n::Int)
    if n <= 2
        return n
    end
    
    # Initialize variables for the first two steps
    step1 = 1
    step2 = 2
    
    for i in 3:n
        # Calculate ways to reach current step
        current_step = step1 + step2
        
        # Update variables for next iteration
        step1 = step2
        step2 = current_step
    end
    
    return step2
end


# Test cases
@testset "Climbing Stairs" begin
    # Example cases
    # Test case 1
    n1 = 2
    expected_output1 = 2
    @test climb_stairs(n1) == expected_output1
    
    # Test case 2
    n2 = 3
    expected_output2 = 3
    @test climb_stairs(n2) == expected_output2
    
    # Additional test cases
    # Test case 3
    n3 = 5
    expected_output3 = 8
    @test climb_stairs(n3) == expected_output3
    
    # Test case 4
    n4 = 10
    expected_output4 = 89
    @test climb_stairs(n4) == expected_output4
    
    # Test case 5
    n5 = 1
    expected_output5 = 1
    @test climb_stairs(n5) == expected_output5
end
