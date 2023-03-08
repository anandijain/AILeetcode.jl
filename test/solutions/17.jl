function letterCombinations(digits::AbstractString)::Vector{String}
    mapping = Dict(
        '2' => "abc",
        '3' => "def",
        '4' => "ghi",
        '5' => "jkl",
        '6' => "mno",
        '7' => "pqrs",
        '8' => "tuv",
        '9' => "wxyz"
    )
    
    function letterCombinationsHelper(digits::AbstractString, pos::Int)::Vector{String}
        if pos == length(digits) + 1
            return [""]
        else
            curr_digit = digits[pos]
            next_combinations = letterCombinationsHelper(digits, pos+1)
            result = []
            
            for letter in mapping[curr_digit]
                for combination in next_combinations
                    push!(result, letter * combination)
                end
            end
            
            return result
        end
    end
    
    if digits == ""
        return []
    else
        return letterCombinationsHelper(digits, 1)
    end
end
