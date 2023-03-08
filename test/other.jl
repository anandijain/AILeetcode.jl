function bar(x)
    y = 2x
    res = try
        error()
    catch e
        y = 3x
    end
    y
end
bar(3)