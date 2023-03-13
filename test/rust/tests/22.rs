fn generate_parenthesis(n: i32) -> Vec<String> {
    let mut output = Vec::new();
    backtrack(&mut output, String::new(), 0, 0, n);
    output
}

fn backtrack(output: &mut Vec<String>, current: String, open: i32, close: i32, max: i32) {
    if current.len() == (max * 2) as usize {
        output.push(current);
        return;
    }

    if open < max {
        backtrack(output, format!("{}(", current), open + 1, close, max);
    }
    if close < open {
        backtrack(output, format!("{})", current), open, close + 1, max);
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let n = 3;
        let expected_output = vec![
            "((()))".to_string(),
            "(()())".to_string(),
            "(())()".to_string(),
            "()(())".to_string(),
            "()()()".to_string(),
        ];
        let output = generate_parenthesis(n);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let n = 1;
        let expected_output = vec!["()".to_string()];
        let output = generate_parenthesis(n);
        assert_eq!(output, expected_output);
    }
}
