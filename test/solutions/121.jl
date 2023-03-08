function maxProfit(prices::Array{Int64,1})::Int64
    n = length(prices)
    if n <= 1
        return 0
    end
    max_profit = 0
    min_price = prices[1]
    for i in 2:n
        max_profit = max(max_profit, prices[i] - min_price)
        min_price = min(min_price, prices[i])
    end
    return max_profit
end


@testset "maxProfit tests" begin
    # Test case 1
    prices = [7, 1, 5, 3, 6, 4]
    expected_output = 5
    @test maxProfit(prices) == expected_output
    
    # Test case 2
    prices = [7, 6, 4, 3, 1]
    expected_output = 0
    @test maxProfit(prices) == expected_output
    
    # Test case 3
    prices = [2, 4, 1]
    expected_output = 2
    @test maxProfit(prices) == expected_output
end
