fn is_palindrome(s: String) -> bool {
    let s: Vec<char> = s.chars().filter(|c| c.is_ascii_alphanumeric()).map(|c| c.to_ascii_lowercase()).collect();
    let mut left = 0;
    let mut right = s.len() - 1;

    while left < right {
        if s[left] != s[right] {
            return false;
        }
        left += 1;
        right -= 1;
    }

    true
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let s = "A man, a plan, a canal: Panama".to_string();
        assert_eq!(is_palindrome(s), true);
    }

    #[test]
    fn test_example2() {
        let s = "race a car".to_string();
        assert_eq!(is_palindrome(s), false);
    }

    #[test]
    fn test_example3() {
        let s = " ".to_string();
        assert_eq!(is_palindrome(s), true);
    }
}
