fn divide(dividend: i32, divisor: i32) -> i32 {
    if dividend == i32::MIN && divisor == -1 {
        return i32::MAX;
    }

    let mut dvd = dividend.abs();
    let mut dvs = divisor.abs();
    let sign = if (dividend > 0) ^ (divisor > 0) {
        -1
    } else {
        1
    };
    let mut result = 0;

    while dvd >= dvs {
        let mut t = dvs;
        let mut m = 1;

        while dvd >= (t << 1) {
            t <<= 1;
            m <<= 1;
        }

        dvd -= t;
        result += m;
    }

    sign * result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let dividend = 10;
        let divisor = 3;
        let expected_output = 3;
        let output = divide(dividend, divisor);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let dividend = 7;
        let divisor = -3;
        let expected_output = -2;
        let output = divide(dividend, divisor);
        assert_eq!(output, expected_output);
    }
}
