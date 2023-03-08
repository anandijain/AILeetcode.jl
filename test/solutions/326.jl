function is_power_of_three(n::Int)::Bool
    if n <= 0
        return false
    end
    
    while n % 3 == 0
        n = n ÷ 3
    end
    
    return n == 1 
end

# Test cases
@testset "Power of Three Test" begin
    # Example cases
    # Test case 1
    n1 = 27
    expected_output1 = true
    @test is_power_of_three(n1) == expected_output1
    
    # Test case 2
    n2 = 0
    expected_output2 = false
    @test is_power_of_three(n2) == expected_output2
    
    # Test case 3
    n3 = -1
    expected_output3 = false
    @test is_power_of_three(n3) == expected_output3
    
    # Additional test cases
    # Test case 4
    n4 = 1
    expected_output4 = true
    @test is_power_of_three(n4) == expected_output4
    
    # Test case 5
    n5 = 9
    expected_output5 = true
    @test is_power_of_three(n5) == expected_output5
    
    # Test case 6
    n6 = 45
    expected_output6 = false
    @test is_power_of_three(n6) == expected_output6
end
