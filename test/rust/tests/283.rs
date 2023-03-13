fn move_zeroes(nums: &mut Vec<i32>) {
    let mut i = 0;
    let mut j = 0;

    while j < nums.len() {
        if nums[j] != 0 {
            nums.swap(i, j);
            i += 1;
        }
        j += 1;
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let mut nums = vec![0, 1, 0, 3, 12];
        let expected_nums = vec![1, 3, 12, 0, 0];
        move_zeroes(&mut nums);
        assert_eq!(nums, expected_nums);
    }

    #[test]
    fn test_example2() {
        let mut nums = vec![0];
        let expected_nums = vec![0];
        move_zeroes(&mut nums);
        assert_eq!(nums, expected_nums);
    }
}
