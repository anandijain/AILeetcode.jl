function climb_stairs(n::Int64)::Int64
    if n == 1
        return 1
    end
    if n == 2
        return 2
    end
    dp = zeros(Int64, n+1)
    dp[1] = 1
    dp[2] = 2
    for i in 3:n
        dp[i] = dp[i-1] + dp[i-2]
    end
    return dp[n]
end

@testset "climb_stairs tests" begin
    @test climb_stairs(2) == 2
    @test climb_stairs(3) == 3
    @test climb_stairs(4) == 5
    @test climb_stairs(5) == 8
end
