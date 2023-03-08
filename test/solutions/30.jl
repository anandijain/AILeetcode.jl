mutable struct ListNode
    val::Int
    next::Union{ListNode, Nothing}
    
    function ListNode(val = 0, next = nothing)
        new(val, next)
    end
end

function merge_two_lists(l1::ListNode, l2::ListNode)::Union{ListNode, Nothing}
    if isnothing(l1)
        return l2
    end
    if isnothing(l2)
        return l1
    end
    
    if l1.val <= l2.val
        merged_list = l1
        merged_list.next = merge_two_lists(l1.next, l2)
    else
        merged_list = l2
        merged_list.next = merge_two_lists(l1, l2.next)
    end
    
    return merged_list
end

@testset "merge_two_lists tests" begin
    l1 = ListNode(1, ListNode(2, ListNode(4, nothing)))
    l2 = ListNode(1, ListNode(3, ListNode(4, nothing)))
    expected = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4, nothing))))))
    @test merge_two_lists(l1, l2) == expected
    
    l1 = nothing
    l2 = nothing
    expected = nothing
    @test merge_two_lists(l1, l2) == expected
    
    l1 = nothing
    l2 = ListNode(0, nothing)
    expected = ListNode(0, nothing)
    @test merge_two_lists(l1, l2) == expected
end
