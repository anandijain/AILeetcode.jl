function roman_to_int(s::String)::Int
    # Initialize dictionary of roman numerals and their values
    roman_dict = Dict('I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000)
    
    # Convert string to an array of individual characters
    arr = collect(s)
    
    # Initialize result variable
    result = 0
    
    # Loop through array of characters
    i = 1
    while i <= length(arr)
        # If there is a subtraction, add the value of the combined numerals
        if i < length(arr) && roman_dict[arr[i]] < roman_dict[arr[i+1]]
            result += roman_dict[arr[i+1]] - roman_dict[arr[i]]
            i += 2
        else
            # Otherwise, add the value of the currrent numeral
            result += roman_dict[arr[i]]
            i += 1
        end
    end
    
    return result
end

@testset "Roman to Integer Tests" begin
    # Example 1
    s1 = "III"
    expected_output1 = 3
    @test roman_to_int(s1) == expected_output1
    
    # Example 2
    s2 = "LVIII"
    expected_output2 = 58
    @test roman_to_int(s2) == expected_output2
    
    # Example 3
    s3 = "MCMXCIV"
    expected_output3 = 1994
    @test roman_to_int(s3) == expected_output3
    
    # Custom Test 1
    s4 = "IX"
    expected_output4 = 9
    @test roman_to_int(s4) == expected_output4
    
    # Custom Test 2
    s5 = "XLV"
    expected_output5 = 45
    @test roman_to_int(s5) == expected_output5
    
    # Custom Test 3
    s6 = "MMMCMXCVIII"
    expected_output6 = 3998
    @test roman_to_int(s6) == expected_output6
end
