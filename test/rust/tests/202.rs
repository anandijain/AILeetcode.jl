use std::collections::HashSet;

fn is_happy(n: i32) -> bool {
    let mut set = HashSet::new();
    let mut n = n;

    while n != 1 {
        let mut sum = 0;
        while n > 0 {
            let digit = n % 10;
            sum += digit * digit;
            n /= 10;
        }

        if set.contains(&sum) {
            return false;
        } else {
            set.insert(sum);
        }

        n = sum;
    }

    true
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        assert_eq!(is_happy(19), true);
    }

    #[test]
    fn test_example2() {
        assert_eq!(is_happy(2), false);
    }
}
