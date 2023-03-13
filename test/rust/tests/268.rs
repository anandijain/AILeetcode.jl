fn missing_number(nums: Vec<i32>) -> i32 {
    let n = nums.len() as i32;
    let expected_sum = (n * (n + 1)) / 2;
    let actual_sum = nums.iter().sum();
    expected_sum - actual_sum
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let nums = vec![3, 0, 1];
        let expected_output = 2;
        let output = missing_number(nums);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let nums = vec![0, 1];
        let expected_output = 2;
        let output = missing_number(nums);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example3() {
        let nums = vec![9, 6, 4, 2, 3, 5, 7, 0, 1];
        let expected_output = 8;
        let output = missing_number(nums);
        assert_eq!(output, expected_output);
    }
}
