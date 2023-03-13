fn my_sqrt(x: i32) -> i32 {
    if x == 0 {
        return 0;
    }
    let (mut left, mut right) = (1, x);
    while left < right {
        let mid = left + (right - left) / 2;
        if mid <= x / mid {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    left - 1
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let x = 4;
        let expected_output = 2;
        let output = my_sqrt(x);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let x = 8;
        let expected_output = 2;
        let output = my_sqrt(x);
        assert_eq!(output, expected_output);
    }
}
