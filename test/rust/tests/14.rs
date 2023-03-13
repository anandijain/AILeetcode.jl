fn longest_common_prefix(strs: Vec<String>) -> String {
    if strs.is_empty() {
        return "".to_string();
    }

    let mut prefix = &strs[0];

    for s in &strs[1..] {
        while !s.starts_with(prefix) {
            prefix = &prefix[..prefix.len() - 1];
            if prefix.is_empty() {
                return "".to_string();
            }
        }
    }

    prefix.to_string()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let strs = vec!["flower".to_string(), "flow".to_string(), "flight".to_string()];
        assert_eq!(longest_common_prefix(strs), "fl".to_string());
    }

    #[test]
    fn test_example2() {
        let strs = vec!["dog".to_string(), "racecar".to_string(), "car".to_string()];
        assert_eq!(longest_common_prefix(strs), "".to_string());
    }
}
