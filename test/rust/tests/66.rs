fn plus_one(digits: Vec<i32>) -> Vec<i32> {
    let mut digits = digits;
    let n = digits.len();

    for i in (0..n).rev() {
        if digits[i] < 9 {
            digits[i] += 1;
            return digits;
        } else {
            digits[i] = 0;
        }
    }

    let mut new_digits = vec![0; n+1];
    new_digits[0] = 1;
    new_digits
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let digits = vec![1, 2, 3];
        let expected_output = vec![1, 2, 4];
        let output = plus_one(digits);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let digits = vec![4, 3, 2, 1];
        let expected_output = vec![4, 3, 2, 2];
        let output = plus_one(digits);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example3() {
        let digits = vec![9];
        let expected_output = vec![1, 0];
        let output = plus_one(digits);
        assert_eq!(output, expected_output);
    }
}
