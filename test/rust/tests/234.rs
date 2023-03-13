use std::rc::Rc;
use std::cell::RefCell;

fn is_palindrome(head: Option<Rc<RefCell<ListNode>>>) -> bool {
    let mut slow = head.clone();
    let mut fast = head.clone();

    // find the middle of the list
    while let (Some(node1), Some(node2)) = (&slow, &fast) {
        slow = node1.borrow().next.clone();
        fast = node2.borrow().next.clone().and_then(|node| node.borrow().next.clone());
    }

    // reverse the second half of the list
    let mut prev = None;
    let mut curr = slow;
    while let Some(node) = curr {
        let next = node.borrow().next.clone();
        node.borrow_mut().next = prev;
        prev = Some(node);
        curr = next;
    }

    let mut head1 = head;
    let mut head2 = prev;

    // compare the first half with the second half
    while let (Some(node1), Some(node2)) = (&head1, &head2) {
        if node1.borrow().val != node2.borrow().val {
            return false;
        }
        head1 = node1.borrow().next.clone();
        head2 = node2.borrow().next.clone();
    }

    true
}

#[cfg(test)]
mod tests {
    use super::*;

    fn list_to_linked_list(values: &[i32]) -> Option<Rc<RefCell<ListNode>>> {
        let mut head = None;
        for &val in values.iter().rev() {
            let node = Some(Rc::new(RefCell::new(ListNode::new(val))));
            node.as_ref().unwrap().borrow_mut().next = head.take();
            head = node;
        }
        head
    }

    #[test]
    fn test_example1() {
        let head = list_to_linked_list(&[1, 2, 2, 1]);
        assert_eq!(is_palindrome(head), true);
    }

    #[test]
    fn test_example2() {
        let head = list_to_linked_list(&[1, 2]);
        assert_eq!(is_palindrome(head), false);
    }
}
