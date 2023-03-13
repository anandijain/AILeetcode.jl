fn climb_stairs(n: i32) -> i32 {
    if n == 1 {
        return 1;
    }
    let (mut first, mut second) = (1, 2);
    for _ in 3..=n {
        let third = first + second;
        first = second;
        second = third;
    }
    second
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let n = 2;
        let expected_output = 2;
        let output = climb_stairs(n);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let n = 3;
        let expected_output = 3;
        let output = climb_stairs(n);
        assert_eq!(output, expected_output);
    }
}
