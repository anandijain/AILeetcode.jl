// Using two pointers approach - slow and fast pointers
fn has_cycle(head: Option<Box<ListNode>>) -> bool {
    let (mut slow, mut fast) = (&head, &head);

    while fast.is_some() && fast.as_ref().unwrap().next.is_some() {
        slow = &slow.as_ref().unwrap().next;
        fast = &fast.as_ref().unwrap().next.as_ref().unwrap().next;

        if slow.as_ref().unwrap().as_ptr() == fast.as_ref().unwrap().as_ptr() {
            return true;
        }
    }

    false
}

#[cfg(test)]
mod tests {
    use super::*;

    #[derive(PartialEq, Eq, Debug)]
    pub struct ListNode {
        pub val: i32,
        pub next: Option<Box<ListNode>>,
    }

    impl ListNode {
        #[inline]
        fn new(val: i32) -> Self {
            ListNode { next: None, val }
        }
    }

    #[test]
    fn test_example1() {
        let mut node1 = ListNode::new(3);
        let mut node2 = ListNode::new(2);
        let mut node3 = ListNode::new(0);
        let node4 = ListNode::new(-4);

        node1.next = Some(Box::new(node2));
        node2.next = Some(Box::new(node3));
        node3.next = Some(Box::new(node4));
        node4.next = Some(Box::new(node2));

        assert_eq!(has_cycle(Some(Box::new(node1))), true);
    }

    #[test]
    fn test_example2() {
        let mut node1 = ListNode::new(1);
        let node2 = ListNode::new(2);

        node1.next = Some(Box::new(node2));
        node2.next = Some(Box::new(node1));

        assert_eq!(has_cycle(Some(Box::new(node1))), true);
    }

    #[test]
    fn test_example3() {
        let node1 = ListNode::new(1);
        assert_eq!(has_cycle(Some(Box::new(node1))), false);
    }
}
