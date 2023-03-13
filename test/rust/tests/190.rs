pub fn reverse_bits(n: u32) -> u32 {
    let mut result = 0;
    let mut n = n;
    for _ in 0..32 {
        result = result << 1;
        if n & 1 == 1 {
            result |= 1;
        }
        n = n >> 1;
    }
    result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        assert_eq!(reverse_bits(0b00000010100101000001111010011100), 0b00111001011110000010100101000000);
    }

    #[test]
    fn test_example2() {
        assert_eq!(reverse_bits(0b11111111111111111111111111111101), 0b10111111111111111111111111111111);
    }
}
