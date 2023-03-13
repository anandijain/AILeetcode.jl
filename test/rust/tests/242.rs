fn is_anagram(s: String, t: String) -> bool {
    if s.len() != t.len() {
        return false;
    }

    let mut s_count = [0; 26];
    let mut t_count = [0; 26];

    for ch in s.chars() {
        s_count[ch as usize - 'a' as usize] += 1;
    }

    for ch in t.chars() {
        t_count[ch as usize - 'a' as usize] += 1;
    }

    s_count == t_count
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let s = "anagram".to_string();
        let t = "nagaram".to_string();
        assert_eq!(is_anagram(s, t), true);
    }

    #[test]
    fn test_example2() {
        let s = "rat".to_string();
        let t = "car".to_string();
        assert_eq!(is_anagram(s, t), false);
    }
}
