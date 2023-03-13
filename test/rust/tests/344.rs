fn reverse_string(s: &mut Vec<char>) {
    let n = s.len();
    let mut i = 0;
    let mut j = n - 1;

    while i < j {
        s.swap(i, j);
        i += 1;
        j -= 1;
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let mut s = vec!['h', 'e', 'l', 'l', 'o'];
        let expected_s = vec!['o', 'l', 'l', 'e', 'h'];
        reverse_string(&mut s);
        assert_eq!(s, expected_s);
    }

    #[test]
    fn test_example2() {
        let mut s = vec!['H', 'a', 'n', 'n', 'a', 'h'];
        let expected_s = vec!['h', 'a', 'n', 'n', 'a', 'H'];
        reverse_string(&mut s);
        assert_eq!(s, expected_s);
    }
}
