function my_sqrt(x::Int)::Int
    if x < 2
        return x
    end
    lo, hi = 1, x
    while lo <= hi
        mid = lo + (hi - lo) ÷ 2
        sq = mid * mid
        if sq == x
            return mid
        elseif sq < x
            lo = mid + 1
        else
            hi = mid - 1
        end
    end
    hi
end

@testset "my_sqrt" begin
    @test my_sqrt(4) == 2
    @test my_sqrt(8) == 2
    @test my_sqrt(0) == 0
    @test my_sqrt(1) == 1
    @test my_sqrt(12345) == 111
end
