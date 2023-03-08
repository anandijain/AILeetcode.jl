function romanToInt(s::AbstractString)::Int64
    mappings = Dict('I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000)
    result = 0
    prev_value = 0
    for c in reverse(s)
        curr_value = mappings[c]
        if curr_value < prev_value
            result -= curr_value
        else
            result += curr_value
        end
        prev_value = curr_value
    end
    return result
end


@testset "romanToInt tests" begin
    # Test case 1
    s = "III"
    expected_output = 3
    @test romanToInt(s) == expected_output
    
    # Test case 2
    s = "LVIII"
    expected_output = 58
    @test romanToInt(s) == expected_output
    
    # Test case 3
    s = "MCMXCIV"
    expected_output = 1994
    @test romanToInt(s) == expected_output
    
    # Test case 4
    s = "IV"
    expected_output = 4
    @test romanToInt(s) == expected_output
end
