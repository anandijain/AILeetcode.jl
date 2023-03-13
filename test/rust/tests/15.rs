// Using Two Pointers approach
fn three_sum(nums: Vec<i32>) -> Vec<Vec<i32>> {
    let mut nums = nums;
    nums.sort_unstable();

    let mut result = Vec::new();

    for i in 0..nums.len() - 2 {
        if i > 0 && nums[i] == nums[i - 1] {
            continue;
        }

        let mut left = i + 1;
        let mut right = nums.len() - 1;

        while left < right {
            let sum = nums[i] + nums[left] + nums[right];

            if sum == 0 {
                result.push(vec![nums[i], nums[left], nums[right]]);
                left += 1;
                right -= 1;

                while left < right && nums[left] == nums[left - 1] {
                    left += 1;
                }

                while left < right && nums[right] == nums[right + 1] {
                    right -= 1;
                }
            } else if sum < 0 {
                left += 1;
            } else {
                right -= 1;
            }
        }
    }

    result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let nums = vec![-1, 0, 1, 2, -1, -4];
        let mut result = three_sum(nums);
        result.sort_unstable();
        let mut expected = vec![vec![-1, -1, 2], vec![-1, 0, 1]];
        expected.sort_unstable();
        assert_eq!(result, expected);
    }

    #[test]
    fn test_example2() {
        let nums = vec![0, 1, 1];
        let result = three_sum(nums);
        let expected: Vec<Vec<i32>> = vec![];
        assert_eq!(result, expected);
    }

    #[test]
    fn test_example3() {
        let nums = vec![0, 0, 0];
        let mut result = three_sum(nums);
        result.sort_unstable();
        let expected = vec![vec![0, 0, 0]];
        assert_eq!(result, expected);
    }
}
