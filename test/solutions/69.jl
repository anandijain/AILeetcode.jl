function my_sqrt(x::Int)
    # Base case
    if x == 0
        return 0
    end
    
    # Binary search for the square root
    left = 1
    right = x
    while left <= right
        mid = left + (right - left) ÷ 2
        
        # If mid * mid == x, we have found the exact square root
        if mid == x ÷ mid
            return mid
        end
        
        # If mid * mid > x, search left half
        if mid > x ÷ mid
            right = mid - 1
        else # mid * mid < x, search right half
            left = mid + 1
        end
    end
    
    # Since we're rounding down, we return right as the result
    return right
end

# Test cases
@testset "My Sqrt" begin
    # Example cases
    # Test case 1
    x1 = 4
    expected_output1 = 2
    @test my_sqrt(x1) == expected_output1
    
    # Test case 2
    x2 = 8
    expected_output2 = 2
    @test my_sqrt(x2) == expected_output2
    
    # Additional test cases
    # Test case 3
    x3 = 0
    expected_output3 = 0
    @test my_sqrt(x3) == expected_output3
    
    # Test case 4
    x4 = 1
    expected_output4 = 1
    @test my_sqrt(x4) == expected_output4
    
    # Test case 5
    x5 = 15
    expected_output5 = 3
    @test my_sqrt(x5) == expected_output5
    
    # Test case 6
    x6 = 2147395599 # maximum value of x
    expected_output6 = 46339
    @test my_sqrt(x6) == expected_output6
end
