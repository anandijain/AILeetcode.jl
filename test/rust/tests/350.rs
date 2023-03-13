use std::collections::HashMap;

fn intersect(nums1: Vec<i32>, nums2: Vec<i32>) -> Vec<i32> {
    let mut count_map = HashMap::new();
    let mut result = Vec::new();

    for num in nums1 {
        *count_map.entry(num).or_insert(0) += 1;
    }

    for num in nums2 {
        if let Some(count) = count_map.get_mut(&num) {
            result.push(num);
            *count -= 1;
            if *count == 0 {
                count_map.remove(&num);
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
        let nums1 = vec![1, 2, 2, 1];
        let nums2 = vec![2, 2];
        let expected_output = vec![2, 2];
        let output = intersect(nums1, nums2);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let nums1 = vec![4, 9, 5];
        let nums2 = vec![9, 4, 9, 8, 4];
        let expected_output = vec![4, 9];
        let output = intersect(nums1, nums2);
        assert_eq!(output, expected_output);
    }
}
