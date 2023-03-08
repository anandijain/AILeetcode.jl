function is_symmetric(root::Union{Nothing, TreeNode})
    """
    A recursive function to check whether a binary tree is symmetric.

    # Arguments
    - `root::Union{Nothing, TreeNode}`: A node of the binary tree.

    # Return
    - Returns a boolean representing whether the input tree is symmetric.
    """
    function helper(left::Union{Nothing, TreeNode}, right::Union{Nothing, TreeNode})::Bool
        if left === nothing && right === nothing
            return true
        elseif left === nothing || right === nothing
            return false
        elseif left.val != right.val
            return false
        end
        return helper(left.left, right.right) && helper(left.right, right.left)
    end
    return root === nothing || helper(root.left, root.right)
end

@testset "Test Symmetric Tree" begin
    t1 = TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(2, TreeNode(4), TreeNode(3)))
    @test is_symmetric(t1) == true
    t2 = TreeNode(1, TreeNode(2, nothing, TreeNode(3)), TreeNode(2, nothing, TreeNode(3)))
    @test is_symmetric(t2) == false
    @test is_symmetric(nothing) == true
end
