function fizz_buzz(n::Int)
    ans = Array{String}(undef, n)
    for i in 1:n
        if i % 3 == 0 && i % 5 == 0
            ans[i] = "FizzBuzz"
        elseif i % 3 == 0
            ans[i] = "Fizz"
        elseif i % 5 == 0
            ans[i] = "Buzz"
        else
            ans[i] = string(i)
        end
    end
    return ans
end

# Test cases
@testset "Fizz Buzz" begin
    # Example cases
    # Test case 1
    input1 = 3
    expected_output1 = ["1","2","Fizz"]
    @test fizz_buzz(input1) == expected_output1
    
    # Test case 2
    input2 = 5
    expected_output2 = ["1","2","Fizz","4","Buzz"]
    @test fizz_buzz(input2) == expected_output2
    
    # Test case 3
    input3 = 15
    expected_output3 = ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
    @test fizz_buzz(input3) == expected_output3
    
    # Additional test cases
    # Test case 4
    input4 = 1
    expected_output4 = ["1"]
    @test fizz_buzz(input4) == expected_output4
    
    # Test case 5
    input5 = 10
    expected_output5 = ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz"]
    @test fizz_buzz(input5) == expected_output5
    
    # Test case 6
    input6 = 30
    expected_output6 = ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz",
                        "16","17","Fizz","19","Buzz","Fizz","22","23","Fizz","Buzz","26","Fizz","28","29","FizzBuzz"]
    @test fizz_buzz(input6) == expected_output6
end
