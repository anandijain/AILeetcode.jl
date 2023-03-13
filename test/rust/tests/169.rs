// Using Boyer-Moore Voting Algorithm
pub fn majority_element(nums: Vec<i32>) -> i32 {
    let mut count = 0;
    let mut candidate = 0;

    for num in nums {
        if count == 0 {
            candidate = num;
        }

        if candidate == num {
            count += 1;
        } else {
            count -= 1;
        }
    }

    candidate
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let nums = vec![3, 2, 3];
        assert_eq!(majority_element(nums), 3);
    }

    #[test]
    fn test_example2() {
        let nums = vec![2, 2, 1, 1, 1, 2, 2];
        assert_eq!(majority_element(nums), 2);
    }

    #[test]
    fn test_custom() {
        let nums = vec![3, 3, 4];
        assert_eq!(majority_element(nums), 3);
    }
}
