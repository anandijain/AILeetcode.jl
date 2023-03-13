// Using Stack
pub fn is_valid(s: String) -> bool {
    let mut stack = Vec::new();

    for bracket in s.chars() {
        match bracket {
            '(' | '{' | '[' => stack.push(bracket),
            ')' if stack.last() == Some(&'(') => { stack.pop(); },
            '}' if stack.last() == Some(&'{') => { stack.pop(); },
            ']' if stack.last() == Some(&'[') => { stack.pop(); },
            _ => return false,
        }
    }

    stack.is_empty()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let s = "()".to_string();
        assert_eq!(is_valid(s), true);
    }

    #[test]
    fn test_example2() {
        let s = "()[]{}".to_string();
        assert_eq!(is_valid(s), true);
    }

    #[test]
    fn test_example3() {
        let s = "(]".to_string();
        assert_eq!(is_valid(s), false);
    }
}
