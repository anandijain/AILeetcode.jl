struct ListNode
    val::Int
    next::Union{ListNode, Nothing}
end

function add_two_numbers(l1::ListNode, l2::ListNode)::ListNode
    carry = 0
    dummy = ListNode(0, nothing)
    curr = dummy
    while l1 != nothing || l2 != nothing || carry != 0
        sum = carry
        if l1 != nothing
            sum += l1.val
            l1 = l1.next
        end
        if l2 != nothing
            sum += l2.val
            l2 = l2.next
        end
        carry, val = divrem(sum, 10)
        curr.next = ListNode(val, nothing)
        curr = curr.next
    end
    dummy.next
end

@testset "add_two_numbers" begin
    l1 = ListNode(2, ListNode(4, ListNode(3, nothing)))
    l2 = ListNode(5, ListNode(6, ListNode(4, nothing)))
    r = add_two_numbers(l1, l2)
    @test r.val == 7
    @test r.next.val == 0
    @test r.next.next.val == 8
    @test r.next.next.next == nothing
    
    l3 = ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9,
          ListNode(9, ListNode(9, nothing)))))))
    l4 = ListNode(9, ListNode(9, ListNode(9, ListNode(9, nothing))))
    r = add_two_numbers(l3, l4)
    @test r.val == 8
    @test r.next.val == 9
    @test r.next.next.val == 9
    @test r.next.next.next.val == 9
    @test r.next.next.next.next.val == 0
    @test r.next.next.next.next.next.val == 0
    @test r.next.next.next.next.next.next.val == 0
    @test r.next.next.next.next.next.next.next.val == 1
    
    l5 = ListNode(0, nothing)
    l6 = ListNode(0, nothing)
    r = add_two_numbers(l5, l6)
    @test r.val == 0
    @test r.next == nothing
end
