fn fizz_buzz(n: i32) -> Vec<String> {
    let mut result = Vec::new();

    for i in 1..=n {
        if i % 3 == 0 && i % 5 == 0 {
            result.push("FizzBuzz".to_string());
        } else if i % 3 == 0 {
            result.push("Fizz".to_string());
        } else if i % 5 == 0 {
            result.push("Buzz".to_string());
        } else {
            result.push(i.to_string());
        }
    }

    result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let n = 3;
        let expected_output = vec!["1", "2", "Fizz"];
        let output = fizz_buzz(n);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let n = 5;
        let expected_output = vec!["1", "2", "Fizz", "4", "Buzz"];
        let output = fizz_buzz(n);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example3() {
        let n = 15;
        let expected_output = vec!["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"];
        let output = fizz_buzz(n);
        assert_eq!(output, expected_output);
    }
}
