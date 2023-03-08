function titleToNumber(columnTitle::AbstractString)::Int64
    num = 0
    for i in 1:length(columnTitle)
        digit = columnTitle[length(columnTitle)-i+1]
        num += (Int(digit[1]) - 64) * 26^(i-1)
    end
    return num
end


@testset "titleToNumber tests" begin
    # Test case 1
    columnTitle = "A"
    expected_output = 1
    @test titleToNumber(columnTitle) == expected_output
    
    # Test case 2
    columnTitle = "AB"
    expected_output = 28
    @test titleToNumber(columnTitle) == expected_output
    
    # Test case 3
    columnTitle = "ZY"
    expected_output = 701
    @test titleToNumber(columnTitle) == expected_output
end
