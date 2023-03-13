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

fn max_depth(root: Option<Rc<RefCell<TreeNode>>>) -> i32 {
    if let Some(node) = root {
        return 1 + std::cmp::max(max_depth(node.borrow().left.clone()), max_depth(node.borrow().right.clone()));
    }
    0
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let n3 = Some(Rc::new(RefCell::new(TreeNode::new(3))));
        let n9 = Some(Rc::new(RefCell::new(TreeNode::new(9))));
        let n20 = Some(Rc::new(RefCell::new(TreeNode::new(20))));
        let n15 = Some(Rc::new(RefCell::new(TreeNode::new(15))));
        let n7 = Some(Rc::new(RefCell::new(TreeNode::new(7))));
        
        n3.as_ref().unwrap().borrow_mut().left = n9;
        n3.as_ref().unwrap().borrow_mut().right = n20;
        n20.as_ref().unwrap().borrow_mut().left = n15;
        n20.as_ref().unwrap().borrow_mut().right = n7;
        
        assert_eq!(max_depth(n3), 3);
    }

    #[test]
    fn test_example2() {
        let n1 = Some(Rc::new(RefCell::new(TreeNode::new(1))));
        let n2 = Some(Rc::new(RefCell::new(TreeNode::new(2))));
        
        n1.as_ref().unwrap().borrow_mut().right = n2;
        
        assert_eq!(max_depth(n1), 2);
    }
}
