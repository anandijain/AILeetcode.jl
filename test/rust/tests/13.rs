fn roman_to_int(s: String) -> i32 {
    let mut prev = 0;
    let mut result = 0;

    for c in s.chars().rev() {
        let val = match c {
            'I' => 1,
            'V' => 5,
            'X' => 10,
            'L' => 50,
            'C' => 100,
            'D' => 500,
            'M' => 1000,
            _ => 0,
        };

        if val < prev {
            result -= val;
        } else {
            result += val;
        }
        
        prev = val;
    }

    result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let s = "III".to_string();
        assert_eq!(roman_to_int(s), 3);
    }

    #[test]
    fn test_example2() {
        let s = "LVIII".to_string();
        assert_eq!(roman_to_int(s), 58);
    }

    #[test]
    fn test_example3() {
        let s = "MCMXCIV".to_string();
        assert_eq!(roman_to_int(s), 1994);
    }
}
