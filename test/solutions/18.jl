function roman_to_int(s::AbstractString)::Int
    roman_map = Dict('I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000)
    int_val = 0
    prev_val = 0
    
    for i in length(s):-1:1
        curr_val = roman_map[s[i]]
        if curr_val < prev_val
            int_val -= curr_val
        else
            int_val += curr_val
        end
        prev_val = curr_val
    end
    
    return int_val
end

@testset "roman_to_int tests" begin
    @test roman_to_int("III") == 3
    @test roman_to_int("LVIII") == 58
    @test roman_to_int("MCMXCIV") == 1994
end
