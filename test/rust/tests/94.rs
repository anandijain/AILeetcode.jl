use std::rc::Rc;
use std::cell::RefCell;

type TreeNode = Option<Rc<RefCell<TreeNode>>>;

#[derive(Debug, PartialEq, Eq)]
pub struct TreeNode {
    pub val: i32,
    pub left: TreeNode,
    pub right: TreeNode,
}

impl TreeNode {
    #[inline]
    pub fn new(val: i32) -> Self {
        TreeNode { val, left: None, right: None }
    }
}

fn inorder_traversal(root: TreeNode) -> Vec<i32> {
    let mut res = Vec::new();
    inorder(root, &mut res);
    res
}

fn inorder(root: TreeNode, res: &mut Vec<i32>) {
    if let Some(node) = root {
        inorder(node.borrow().left.clone(), res);
        res.push(node.borrow().val);
        inorder(node.borrow().right.clone(), res);
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let root = Some(Rc::new(RefCell::new(TreeNode {
            val: 1,
            left: None,
            right: Some(Rc::new(RefCell::new(TreeNode {
                val: 2,
                left: Some(Rc::new(RefCell::new(TreeNode::new(3)))),
                right: None,
            }))),
        })));
        let expected_output = vec![1, 3, 2];
        let output = inorder_traversal(root);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let root = None;
        let expected_output: Vec<i32> = vec![];
        let output = inorder_traversal(root);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example3() {
        let root = Some(Rc::new(RefCell::new(TreeNode::new(1))));
        let expected_output = vec![1];
        let output = inorder_traversal(root);
        assert_eq!(output, expected_output);
    }
}
