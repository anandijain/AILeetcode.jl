use std::cell::RefCell;
use std::rc::Rc;

#[derive(Debug, PartialEq, Eq)]
struct TreeNode {
    val: i32,
    left: Option<Rc<RefCell<TreeNode>>>,
    right: Option<Rc<RefCell<TreeNode>>>,
}

impl TreeNode {
    #[inline]
    fn new(val: i32) -> Self {
        TreeNode {
            val,
            left: None,
            right: None,
        }
    }
}

fn is_mirror(node1: Option<&Rc<RefCell<TreeNode>>>, node2: Option<&Rc<RefCell<TreeNode>>>) -> bool {
    if let (Some(n1), Some(n2)) = (node1, node2) {
        return n1.borrow().val == n2.borrow().val && is_mirror(n1.borrow().left.as_ref(), n2.borrow().right.as_ref()) && is_mirror(n1.borrow().right.as_ref(), n2.borrow().left.as_ref());
    }
    node1 == node2
}

fn is_symmetric(root: Option<Rc<RefCell<TreeNode>>>) -> bool {
    if let Some(node) = root {
        return is_mirror(node.borrow().left.as_ref(), node.borrow().right.as_ref());
    }
    true
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let n1 = Some(Rc::new(RefCell::new(TreeNode::new(1))));
        let n2_left = Some(Rc::new(RefCell::new(TreeNode::new(2))));
        let n2_right = Some(Rc::new(RefCell::new(TreeNode::new(2))));
        let n3_left_left = Some(Rc::new(RefCell::new(TreeNode::new(3))));
        let n3_left_right = Some(Rc::new(RefCell::new(TreeNode::new(4))));
        let n3_right_left = Some(Rc::new(RefCell::new(TreeNode::new(4))));
        let n3_right_right = Some(Rc::new(RefCell::new(TreeNode::new(3))));
        
        n1.as_ref().unwrap().borrow_mut().left = n2_left;
        n1.as_ref().unwrap().borrow_mut().right = n2_right;
        n2_left.as_ref().unwrap().borrow_mut().left = n3_left_left;
        n2_left.as_ref().unwrap().borrow_mut().right = n3_left_right;
        n2_right.as_ref().unwrap().borrow_mut().left = n3_right_left;
        n2_right.as_ref().unwrap().borrow_mut().right = n3_right_right;
        
        assert_eq!(is_symmetric(n1), true);
    }

    #[test]
    fn test_example2() {
        let n1 = Some(Rc::new(RefCell::new(TreeNode::new(1))));
        let n2_left = Some(Rc::new(RefCell::new(TreeNode::new(2))));
        let n2_right = Some(Rc::new(RefCell::new(TreeNode::new(2))));
        let n3_left_right = Some(Rc::new(RefCell::new(TreeNode::new(3))));
        let n3_right_right = Some(Rc::new(RefCell::new(TreeNode::new(3))));
        
        n1.as_ref().unwrap().borrow_mut().left = n2_left;
        n1.as_ref().unwrap().borrow_mut().right = n2_right;
        n2_left.as_ref().unwrap().borrow_mut().right = n3_left_right;
        n2_right.as_ref().unwrap().borrow_mut().right = n3_right_right;
        
        assert_eq!(is_symmetric(n1), false);
    }
}
