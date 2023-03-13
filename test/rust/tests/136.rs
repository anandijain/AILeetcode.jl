// Using bit manipulation
fn single_number(nums: Vec<i32>) -> i32 {
    let mut result = 0;
    for num in nums {
        result ^= num;
    }
    result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let nums = vec![2, 2, 1];
        assert_eq!(single_number(nums), 1);
    }

    #[test]
    fn test_example2() {
        let nums = vec![4, 1, 2, 1, 2];
        assert_eq!(single_number(nums), 4);
    }

    #[test]
    fn test_example3() {
        let nums = vec![1];
        assert_eq!(single_number(nums), 1);
    }
}
