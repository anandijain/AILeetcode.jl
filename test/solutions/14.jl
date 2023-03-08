function is_match(s::AbstractString, p::AbstractString)::Bool
    s = collect(s)
    p = collect(p)
    dp = fill(false, length(s), length(p))
    
    # empty string and pattern both matches
    dp[1,1] = true
    
    # mark the empty pattern matching
    for i in 2:length(p)
        if p[i] == '*' && dp[1,i-2]
            dp[1,i] = true
        end
    end
    
    for i in 2:length(s)+1
        for j in 2:length(p)+1
            if s[i-1] == p[j-1] || p[j-1] == '.'
                dp[i-1,j-1] = dp[i-2,j-2]
            elseif p[j-1] == '*'
                dp[i-1,j-1] = dp[i-1,j-2]
                if p[j-2] == s[i-1] || p[j-2] == '.'
                    dp[i-1,j-1] = dp[i-1,j-1] || dp[i-2,j-1]
                end
            end
        end
    end
    
    return dp[end]
end



@testset "is_match tests" begin
    @test is_match("aa", "a") == false
    @test is_match("aa", "a*") == true
    @test is_match("ab", ".*") == true
end
