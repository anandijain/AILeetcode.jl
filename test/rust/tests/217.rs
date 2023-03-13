fn contains_duplicate(nums: Vec<i32>) -> bool {
    let mut set = std::collections::HashSet::new();
    for num in nums {
        if !set.insert(num) {
            return true;
        }
    }
    false
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let nums = vec![1, 2, 3, 1];
        assert_eq!(contains_duplicate(nums), true);
    }

    #[test]
    fn test_example2() {
        let nums = vec![1, 2, 3, 4];
        assert_eq!(contains_duplicate(nums), false);
    }

    #[test]
    fn test_example3() {
        let nums = vec![1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
        assert_eq!(contains_duplicate(nums), true);
    }
}
