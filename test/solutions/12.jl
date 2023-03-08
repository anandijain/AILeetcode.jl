function my_atoi(s::AbstractString)::Int32
    s = strip(s)
    if length(s) == 0
        return 0
    end
    
    # Check for sign
    sign = 1
    if s[1] == '-'
        sign = -1
        s = s[2:end]
    elseif s[1] == '+'
        s = s[2:end]
    end
    
    # Convert digits to integer
    integer_val = 0
    for i in 1:length(s)
        if isdigit(s[i])
            integer_val = integer_val * 10 + parse(Int32, s[i])
        else
            break
        end
    end
    
    # Apply sign and clamp to integer range
    integer_val *= sign
    integer_val = max(integer_val, -2^31)
    integer_val = min(integer_val, 2^31 - 1)
    
    return integer_val
end

@testset "my_atoi tests" begin
    @test my_atoi("42") == 42
    @test my_atoi("   -42") == -42
    @test my_atoi("4193 with words") == 4193
    @test my_atoi("words and 987") == 0
    @test my_atoi("-91283472332") == -2147483648
end
