function reverseBits(n::UInt32)::UInt32
    result = 0
    for i in 0:31
        bit = (n >> i) & 1
        result = result | (bit << (31 - i))
    end
    return result
end


@testset "reverseBits tests" begin
    # Test case 1
    n = 0b00000010100101000001111010011100
    expected_output = 0b00111001011110000010100101000000
    @test reverseBits(n) == expected_output
    
    # Test case 2
    n = 0b11111111111111111111111111111101
    expected_output = 0b10111111111111111111111111111111
    @test reverseBits(n) == expected_output
end
