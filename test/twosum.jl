function two_sum(nums, target)
    # Create an empty Dictionary to store the indices of the previously seen numbers
    indices = Dict()
    
    for (i, num) in enumerate(nums)
        # Calculate the difference between the target and the current number
        diff = target - num
        
        # If the difference is in the Dictionary, we have found a pair of numbers that add up to target
        if haskey(indices, diff)
            # Return the indices of the two numbers as an array
            return [indices[diff], i]
        end
        
        # Otherwise, add the current number and its index to the Dictionary
        indices[num] = i
    end
    
    # If no pair of numbers add up to target, return an empty array
    return []
end


using Test
  
# Example 1
@test two_sum([2, 7, 11, 15], 9) == [1, 2]

# Example 2
@test two_sum([3, 2, 4], 6) == [2, 3]

# Example 3
@test two_sum([3, 3], 6) == [1, 2]

