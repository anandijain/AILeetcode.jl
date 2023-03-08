function max_profit(prices::Vector{Int})::Int
    min_price = Inf
    max_profit = 0
    
    for price in prices
        if price < min_price
            min_price = price
        else
            profit = price - min_price
            if profit > max_profit
                max_profit = profit
            end
        end
    end
    
    return max_profit
end


@testset "Max Profit Tests" begin
    # Example 1
    prices1 = [7,1,5,3,6,4]
    expected_output1 = 5
    @test max_profit(prices1) == expected_output1
    
    # Example 2
    prices2 = [7,6,4,3,1]
    expected_output2 = 0
    @test max_profit(prices2) == expected_output2
    
    # Custom Test 1
    prices3 = [1,2,3,4,5,6,7,8,9,10]
    expected_output3 = 9
    @test max_profit(prices3) == expected_output3
    
    # Custom Test 2
    prices4 = [10,9,8,7,6,5,4,3,2,1]
    expected_output4 = 0
    @test max_profit(prices4) == expected_output4
end
