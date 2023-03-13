use std::collections::HashSet;

fn length_of_longest_substring(s: String) -> i32 {
    let mut max_len = 0;
    let mut start = 0;
    let mut chars = HashSet::new();

    for (end, c) in s.chars().enumerate() {
        while chars.contains(&c) {
            chars.remove(&s[start]);
            start += 1;
        }
        chars.insert(c);
        max_len = max_len.max(end - start + 1);
    }

    max_len as i32
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let s = "abcabcbb".to_string();
        let expected_output = 3;
        let output = length_of_longest_substring(s);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let s = "bbbbb".to_string();
        let expected_output = 1;
        let output = length_of_longest_substring(s);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example3() {
        let s = "pwwkew".to_string();
        let expected_output = 3;
        let output = length_of_longest_substring(s);
        assert_eq!(output, expected_output);
    }
}
