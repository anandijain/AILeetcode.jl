function titleToNumber(columnTitle::AbstractString)::Int
    result = 0
    multiplier = 1
    
    for i = length(columnTitle):-1:1
        digit = columnTitle[i]
        value = UInt16(digit) - UInt16('A') + 1
        result += value * multiplier
        multiplier *= 26
    end
    
    return result
end

@testset "Excel Sheet Column Number Tests" begin
    # Example cases
    @test titleToNumber("A") == 1
    @test titleToNumber("AB") == 28
    @test titleToNumber("ZY") == 701
    
    # Test case with all characters
    @test titleToNumber("FXSHRXW") == 2147483647
end
