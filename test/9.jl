function climb_stairs(n::Int)::Int
    if n < 3
        return n
    end
    prev2, prev1 = 1, 2
    for i in 3:n
        curr = prev1 + prev2
        prev2, prev1 = prev1, curr
    end
    prev1
end

@testset "climb_stairs" begin
    @test climb_stairs(2) == 2
    @test climb_stairs(3) == 3
    @test climb_stairs(5) == 8
    @test climb_stairs(10) == 89
end
