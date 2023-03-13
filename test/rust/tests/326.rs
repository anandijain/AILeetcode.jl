fn is_power_of_three(n: i32) -> bool {
    if n <= 0 {
        return false;
    }

    let max_power_of_three = (3 as f64).log10() / (1 as f64).log10();
    let max_power_of_three_int = max_power_of_three as i32;
    let max_power_of_three_value = 3_i32.pow(max_power_of_three_int as u32);

    max_power_of_three_value % n == 0
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let n = 27;
        let expected_output = true;
        let output = is_power_of_three(n);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let n = 0;
        let expected_output = false;
        let output = is_power_of_three(n);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example3() {
        let n = -1;
        let expected_output = false;
        let output = is_power_of_three(n);
        assert_eq!(output, expected_output);
    }
}
