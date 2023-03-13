// Using Bit Manipulation
pub fn hamming_weight(n: u32) -> i32 {
    let mut count = 0;
    let mut n = n;

    while n != 0 {
        count += 1;
        n &= n - 1;
    }

    count
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        assert_eq!(hamming_weight(0b00000000000000000000000000001011), 3);
    }

    #[test]
    fn test_example2() {
        assert_eq!(hamming_weight(0b00000000000000000000000010000000), 1);
    }

    #[test]
    fn test_example3() {
        assert_eq!(hamming_weight(0b11111111111111111111111111111101), 31);
    }
}
