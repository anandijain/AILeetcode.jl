fn longest_palindrome(s: String) -> String {
    let n = s.len();
    let s = s.as_bytes();
    let mut longest_palindrome = String::new();
    let mut max_length = 0;

    for i in 0..n {
        // Check odd-length palindromes centered at i
        let (mut start, mut end) = (i as i32, i as i32);
        while start >= 0 && end < n as i32 && s[start as usize] == s[end as usize] {
            start -= 1;
            end += 1;
        }
        if end - start - 1 > max_length {
            max_length = end - start - 1;
            longest_palindrome = String::from_utf8(s[(start + 1) as usize..end as usize].to_vec()).unwrap();
        }

        // Check even-length palindromes centered at i, i+1
        let (mut start, mut end) = (i as i32, (i + 1) as i32);
        while start >= 0 && end < n as i32 && s[start as usize] == s[end as usize] {
            start -= 1;
            end += 1;
        }
        if end - start - 1 > max_length {
            max_length = end - start - 1;
            longest_palindrome = String::from_utf8(s[(start + 1) as usize..end as usize].to_vec()).unwrap();
        }
    }

    longest_palindrome
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let s = "babad".to_string();
        let expected_output = "bab".to_string();
        let output = longest_palindrome(s);
        assert!(output == expected_output || output == "aba".to_string());
    }

    #[test]
    fn test_example2() {
        let s = "cbbd".to_string();
        let expected_output = "bb".to_string();
        let output = longest_palindrome(s);
        assert_eq!(output, expected_output);
    }
}
