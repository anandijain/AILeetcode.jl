fn first_uniq_char(s: String) -> i32 {
    let mut counts = [0; 26];

    for c in s.chars() {
        counts[c as usize - 'a' as usize] += 1;
    }

    for (i, c) in s.chars().enumerate() {
        if counts[c as usize - 'a' as usize] == 1 {
            return i as i32;
        }
    }

    -1
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let s = "leetcode".to_string();
        let expected_output = 0;
        let output = first_uniq_char(s);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let s = "loveleetcode".to_string();
        let expected_output = 2;
        let output = first_uniq_char(s);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example3() {
        let s = "aabb".to_string();
        let expected_output = -1;
        let output = first_uniq_char(s);
        assert_eq!(output, expected_output);
    }
}
