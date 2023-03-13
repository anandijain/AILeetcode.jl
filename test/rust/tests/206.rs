use std::rc::Rc;
use std::cell::RefCell;

fn reverse_list(head: Option<Rc<RefCell<ListNode>>>) -> Option<Rc<RefCell<ListNode>>> {
    let (mut prev, mut curr) = (None, head);

    while let Some(node) = curr {
        let next = node.borrow_mut().next.take();
        node.borrow_mut().next = prev.take();
        prev = Some(node);
        curr = next;
    }

    prev
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

    fn linked_list_to_vec(head: Option<Rc<RefCell<ListNode>>>) -> Vec<i32> {
        let mut values = Vec::new();
        let mut head = head;
        while let Some(node) = head {
            values.push(node.borrow().val);
            head = node.borrow().next.clone();
        }
        values
    }

    fn assert_list_eq(l1: Option<Rc<RefCell<ListNode>>>, l2: Option<Rc<RefCell<ListNode>>>) {
        assert_eq!(linked_list_to_vec(l1), linked_list_to_vec(l2));
    }

    #[test]
    fn test_example1() {
        let head = list_to_linked_list(&[1, 2, 3, 4, 5]);
        let expected = list_to_linked_list(&[5, 4, 3, 2, 1]);
        let result = reverse_list(head);
        assert_list_eq(result, expected);
    }

    #[test]
    fn test_example2() {
        let head = list_to_linked_list(&[1, 2]);
        let expected = list_to_linked_list(&[2, 1]);
        let result = reverse_list(head);
        assert_list_eq(result, expected);
    }

    #[test]
    fn test_example3() {
        let head = list_to_linked_list(&[]);
        let expected = list_to_linked_list(&[]);
        let result = reverse_list(head);
        assert_list_eq(result, expected);
    }
}
