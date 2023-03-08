function plus_one(digits::Vector{Int})
    carry = 1
    for i = length(digits):-1:1
        digits[i] += carry
        if digits[i] > 9
            digits[i] = 0
            carry = 1
        else
            carry = 0
            break
        end
    end
    
    # Add one more digit with carry-over
    if carry == 1
        digits = vcat([1], digits)
    end
    
    return digits
end

# Test cases
@testset "Plus One" begin
    # Example cases
    # Test case 1
    input1 = [1,2,3]
    expected_output1 = [1,2,4]
    @test plus_one(input1) == expected_output1
    
    # Test case 2
    input2 = [4,3,2,1]
    expected_output2 = [4,3,2,2]
    @test plus_one(input2) == expected_output2
    
    # Test case 3
    input3 = [9]
    expected_output3 = [1,0]
    @test plus_one(input3) == expected_output3
    
    # Additional test cases
    # Test case 4
    input4 = [0]
    expected_output4 = [1]
    @test plus_one(input4) == expected_output4
    
    # Test case 5
    input5 = [9,9,9]
    expected_output5 = [1,0,0,0]
    @test plus_one(input5) == expected_output5
    
    # Test case 6
    input6 = [1,0,9]
    expected_output6 = [1,1,0]
    @test plus_one(input6) == expected_output6
end
