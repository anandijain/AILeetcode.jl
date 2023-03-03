
function roman_to_int(s::AbstractString)
    values = Dict('I'=>1, 'V'=>5, 'X'=>10, 'L'=>50, 'C'=>100, 'D'=>500, 'M'=>1000)
    result = 0
    prev_value = 0
    for c in s
        value = values[c]
        if value > prev_value
            result -= 2*prev_value
        end
        result += value
        prev_value = value
    end
    return result
end

@test roman_to_int("I") == 1
@test roman_to_int("V") == 5
@test roman_to_int("X") == 10
@test roman_to_int("L") == 50
@test roman_to_int("C") == 100
@test roman_to_int("D") == 500
@test roman_to_int("M") == 1000

@test roman_to_int("III") == 3
@test roman_to_int("IV") == 4
@test roman_to_int("IX") == 9
@test roman_to_int("LVIII") == 58
@test roman_to_int("MCMXCIV") == 1994
