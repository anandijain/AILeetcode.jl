fn search(nums: Vec<i32>, target: i32) -> i32 {
    let n = nums.len();
    if n == 0 {
        return -1;
    }

    let mut l = 0;
    let mut r = n - 1;

    while l <= r {
        let mid = l + (r - l) / 2;

        if nums[mid] == target {
            return mid as i32;
        }

        if nums[mid] >= nums[l] {
            if target >= nums[l] && target < nums[mid] {
                r = mid - 1;
            } else {
                l = mid + 1;
            }
        } else {
            if target <= nums[r] && target > nums[mid] {
                l = mid + 1;
            } else {
                r = mid - 1;
            }
        }
    }

    -1
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let nums = vec![4, 5, 6, 7, 0, 1, 2];
        let target = 0;
        let expected_output = 4;
        let output = search(nums, target);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let nums = vec![4, 5, 6, 7, 0, 1, 2];
        let target = 3;
        let expected_output = -1;
        let output = search(nums, target);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example3() {
        let nums = vec![1];
        let target = 0;
        let expected_output = -1;
        let output = search(nums, target);
        assert_eq!(output, expected_output);
    }
}
