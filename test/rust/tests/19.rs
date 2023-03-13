// Using Two Pointers Approach
use std::rc::Rc;
use std::cell::RefCell;

fn remove_nth_from_end(head: Option<Rc<RefCell<ListNode>>>, n: i32) -> Option<Rc<RefCell<ListNode>>> {
    let mut dummy_head = Some(Rc::new(RefCell::new(ListNode::new(0))));
    dummy_head.as_ref().unwrap().borrow_mut().next = head;

    let (mut slow, mut fast) = (dummy_head.clone(), dummy_head.clone());

    // Move the fast pointer n steps ahead
    for _ in 0..n {
        fast = fast.unwrap().borrow().next.clone();
    }

    // Move the fast and slow pointers together till fast reaches the end
    while let Some(fast_ptr) = fast.borrow().next.clone() {
        fast = Some(fast_ptr);
        slow = slow.unwrap().borrow().next.clone();
    }

    // Remove the desired node
    let node_to_remove = slow.unwrap().borrow().next.clone().unwrap();
    slow.unwrap().borrow_mut().next = node_to_remove.borrow().next.clone();

    dummy_head.unwrap().borrow().next.clone()
}

#[cfg(test)]
mod tests {
    use super::*;

    fn list_to_linked_list(values: &[i32]) -> Option<Rc<RefCell<ListNode>>> {
        let mut head = Some(Rc::new(RefCell::new(ListNode::new(0))));
        let mut tail = &head;

        for val in values {
            let node = Some(Rc::new(RefCell::new(ListNode::new(*val))));
            tail.as_ref().unwrap().borrow_mut().next = node;
            tail = &tail.as_ref().unwrap().borrow().next;
        }

        head.unwrap().borrow().next.clone()
    }

    fn linked_list_to_vec(head: Option<Rc<RefCell<ListNode>>>) -> Vec<i32> {
        let mut values = Vec::new();
        let mut head = head;

        while let Some(node) = head {
            values.push(node.borrow().val);
            head = node.borrow().next.clone();
        }

        values
    }

    #[test]
    fn test_example1() {
        let head = list_to_linked_list(&[1, 2, 3, 4, 5]);
        let result = linked_list_to_vec(remove_nth_from_end(head, 2));
        assert_eq!(result, vec![1, 2, 3, 5]);
    }

    #[test]
    fn test_example2() {
        let head = list_to_linked_list(&[1]);
        let result = linked_list_to_vec(remove_nth_from_end(head, 1));
        assert_eq!(result, vec![]);
    }

    #[test]
    fn test_example3() {
        let head = list_to_linked_list(&[1, 2]);
        let result = linked_list_to_vec(remove_nth_from_end(head, 1));
        assert_eq!(result, vec![1]);
    }
}
