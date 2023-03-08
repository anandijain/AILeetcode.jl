function myAtoi(s::AbstractString)
    sign = 1
    number = 0
    i = 1
    
    # Remove leading whitespace
    while i <= length(s) && s[i] == ' '
        i += 1
    end
    
    # Check for sign
    if i <= length(s) && (s[i] == '+' || s[i] == '-')
        if s[i] == '-'
            sign = -1
        end
        i += 1
    end
    
    # Parse digits
    while i <= length(s) && isdigit(s[i])
        number = number * 10 + parse(Int, s[i])
        i += 1
    end
    
    # Apply sign
    number *= sign
    
    # Clamp to 32-bit signed integer range
    if number < -2^31
        return -2^31
    elseif number > 2^31 - 1
        return 2^31 - 1
    end
    
    return number
end


# Test cases
@testset "String to Integer" begin
    # Example cases
    # Test case 1
    s1 = "42"
    expected_output1 = 42
    @test myAtoi(s1) == expected_output1
    
    # Test case 2
    s2 = "   -42"
    expected_output2 = -42
    @test myAtoi(s2) == expected_output2
    
    # Test case 3
    s3 = "4193 with words"
    expected_output3 = 4193
    @test myAtoi(s3) == expected_output3
    
    # Additional test cases
    # Test case 4
    s4 = "+123"
    expected_output4 = 123
    @test myAtoi(s4) == expected_output4
    
    # Test case 5
    s5 = "-91283472332"
    expected_output5 = -2147483648
    @test  myAtoi(s5) == expected_output5
    
    # Test case 6
    s6 = "words and 987"
    expected_output6 = 0
    @test myAtoi(s6) == expected_output6
    
    # Test case 7
    s7 = "2147483648"
    expected_output7 = 2147483647
    @test myAtoi(s7) == expected_output7
    
    # Test case 8
    s8 = ""
    expected_output8 = 0
    @test myAtoi(s8) == expected_output8
    
    # Test case 9
    s9 = "- "
    expected_output9 = 0
    @test myAtoi(s9) == expected_output9
end
