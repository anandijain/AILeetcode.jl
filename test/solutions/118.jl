function generate_pascals_triangle(numRows::Int)::Vector{Vector{Int}}
    triangle = Vector{Vector{Int}}(undef, numRows)
    for i in 1:numRows
        triangle[i] = Vector{Int}(undef, i)
        triangle[i][1] = 1
        triangle[i][end] = 1
        
        for j in 2:i-1
            triangle[i][j] = triangle[i-1][j-1] + triangle[i-1][j]
        end
    end
    
    return triangle
end


@testset "Pascal's Triangle Tests" begin
    # Sample Input 1
    numRows1 = 5
    expected_output1 = [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
    @test generate_pascals_triangle(numRows1) == expected_output1
    
    # Sample Input 2
    numRows2 = 1
    expected_output2 = [[1]]
    @test generate_pascals_triangle(numRows2) == expected_output2
    
    # Custom Test 1
    numRows3 = 3
    expected_output3 = [[1],[1,1],[1,2,1]]
    @test generate_pascals_triangle(numRows3) == expected_output3
    
    # Custom Test 2
    numRows4 = 6
    expected_output4 = [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1],[1,5,10,10,5,1]]
    @test generate_pascals_triangle(numRows4) == expected_output4
end
