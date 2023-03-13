fn reverse(x: i32) -> i32 {
    let mut x = x;
    let mut reversed = 0;

    while x != 0 {
        let pop = x % 10;
        x /= 10;

        if (reversed > i32::MAX / 10) || (reversed == i32::MAX / 10 && pop > 7) {
            return 0;
        }
        if (reversed < i32::MIN / 10) || (reversed == i32::MIN / 10 && pop < -8) {
            return 0;
        }
        reversed = reversed * 10 + pop;
    }

    reversed
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let x = 123;
        let expected_output = 321;
        let output = reverse(x);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let x = -123;
        let expected_output = -321;
        let output = reverse(x);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example3() {
        let x = 120;
        let expected_output = 21;
        let output = reverse(x);
        assert_eq!(output, expected_output);
    }
}
