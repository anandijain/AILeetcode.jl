function generate(numRows::Int64)::Array{Array{Int64,1},1}
    triangle = Array{Int64, 2}(undef, numRows, numRows)
    for i in 1:numRows
        for j in 1:i
            if j == 1 || j == i
                triangle[i, j] = 1
            else
                triangle[i, j] = triangle[i-1, j-1] + triangle[i-1, j]
            end
        end
    end
    return [triangle[i, 1:i] for i in 1:numRows]
end


@testset "generate tests" begin
    # Test case 1
    numRows = 5
    expected_output = [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]
    @test generate(numRows) == expected_output
    
    # Test case 2
    numRows = 1
    expected_output = [[1]]
    @test generate(numRows) == expected_output
    
    # Test case 3
    numRows = 2
    expected_output = [[1], [1, 1]]
    @test generate(numRows) == expected_output
end
