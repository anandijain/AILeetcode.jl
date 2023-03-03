mutable struct ListNode
    val::Int
    next::Union{ListNode, Nothing}
end

function merge_two_lists(l1::ListNode, l2::ListNode)::ListNode
    dummy = ListNode(0, nothing)
    tail = dummy
    while l1 !== nothing && l2 !== nothing
        if l1.val < l2.val
            tail.next = l1
            l1 = l1.next
        else
            tail.next = l2
            l2 = l2.next
        end
        tail = tail.next
    end
    tail.next = if l1 === nothing l2 else l1 end
    dummy.next
end

@testset "merge_two_lists" begin
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
