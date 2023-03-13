fn my_atoi(s: String) -> i32 {
    let s = s.trim().as_bytes();
    let n = s.len();

    let mut sign = 1;
    let mut i = 0;
    let mut result = 0;

    if i < n && (s[i] == '+' as u8 || s[i] == '-' as u8) {
        if s[i] == '-' as u8 {
            sign = -1;
        }
        i += 1;
    }

    while i < n && s[i].is_ascii_digit() {
        let digit = s[i] - '0' as u8;
        if result > (i32::MAX - digit as i32) / 10 {
            return if sign == 1 { i32::MAX } else { i32::MIN };
        }
        result = result * 10 + digit as i32;
        i += 1;
    }

    sign * result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let s = "42".to_string();
        let expected_output = 42;
        let output = my_atoi(s);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let s = "   -42".to_string();
        let expected_output = -42;
        let output = my_atoi(s);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example3() {
        let s = "4193 with words".to_string();
        let expected_output = 4193;
        let output = my_atoi(s);
        assert_eq!(output, expected_output);
    }
}
