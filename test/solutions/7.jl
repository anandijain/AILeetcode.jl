function reverse_integer(x::Int)
    is_negative = x < 0
    x = abs(x)
    
    result = 0
    while x > 0
        result = result * 10 + x % 10
        x ÷= 10
    end
    
    if is_negative
        result = -result
    end
    
    # Check if the result is within the valid range for a 32-bit integer
    if result < -2^31 || result > 2^31 - 1
        return 0
    end
    
    return result
end

# Test cases
@testset "Reverse Integer" begin
    # Example cases
    # Test case 1
    x1 = 123
    expected_output1 = 321
    @test reverse_integer(x1) == expected_output1
    
    # Test case 2
    x2 = -123
    expected_output2 = -321
    @test reverse_integer(x2) == expected_output2
    
    # Test case 3
    x3 = 120
    expected_output3 = 21
    @test reverse_integer(x3) == expected_output3
    
    # Additional test cases
    # Test case 4
    x4 = -2147483648 # minimum value of x
    expected_output4 = 0
    @test reverse_integer(x4) == expected_output4
    
    # Test case 5
    x5 = 2147483647 # maximum value of x
    expected_output5 = 0
    @test reverse_integer(x5) == expected_output5
    
    # Test case 6
    x6 = 0 # zero input
    expected_output6 = 0
    @test reverse_integer(x6) == expected_output6
end
