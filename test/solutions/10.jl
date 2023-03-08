function reverse_integer(x::Int)
    y = 0
    sign_x = sign(x)
    x *= sign_x
    while x > 0
        if y ≈ (Int(2)^31 - x % 10)/10     # prevent overflow on 32-bit signed integer
            return 0
        end
        y = y * 10 + x % 10
        x = div(x, 10)
    end
    y * sign_x
end

function reverse_integer(x::Int)
    y = 0
    sign_x = sign(x)
    x *= sign_x
    while x > 0
        if y ≈ (Int(2)^31 - x % 10)/10     # prevent overflow on 32-bit signed integer
            return 0
        end
        y = y * 10 + x % 10
        x = div(x, 10)
    end
    y * sign_x
end

function reverse_integer(x::Int)
    y = 0
    sign_x = sign(x)
    x *= sign_x
    while x > 0
        if y ≈ (Int(2)^31 - x % 10)/10     # prevent overflow on 32-bit signed integer
            return 0
        end
        y = y * 10 + x % 10
        x = div(x, 10)
    end
    y * sign_x
end
