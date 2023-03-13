fn remove_duplicates(nums: &mut Vec<i32>) -> i32 {
    if nums.is_empty() {
        return 0;
    }

    let mut k = 1;

    for i in 1..nums.len() {
        if nums[i] != nums[i - 1] {
            nums[k] = nums[i];
            k += 1;
        }
    }

    k as i32
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let mut nums = vec![1, 1, 2];
        let expected_nums = vec![1, 2];
        let expected_k = 2;
        let k = remove_duplicates(&mut nums);
        assert_eq!(k, expected_k);
        assert_eq!(nums[..k as usize], expected_nums[..]);
    }

    #[test]
    fn test_example2() {
        let mut nums = vec![0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
        let expected_nums = vec![0, 1, 2, 3, 4];
        let expected_k = 5;
        let k = remove_duplicates(&mut nums);
        assert_eq!(k, expected_k);
        assert_eq!(nums[..k as usize], expected_nums[..]);
    }
}
