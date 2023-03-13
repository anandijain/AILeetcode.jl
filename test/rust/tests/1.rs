fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
    use std::collections::HashMap;
    let mut map = HashMap::new();
    
    for (i, &num) in nums.iter().enumerate() {
        let complement = target - num;
        
        if let Some(&j) = map.get(&complement) {
            return vec![j as i32, i as i32];
        }
        
        map.insert(num, i);
    }
    
    vec![]
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let nums = vec![2, 7, 11, 15];
        let target = 9;
        let expected = vec![0, 1];
        assert_eq!(two_sum(nums, target), expected);
    }

    #[test]
    fn test_example2() {
        let nums = vec![3, 2, 4];
        let target = 6;
        let expected = vec![1, 2];
        assert_eq!(two_sum(nums, target), expected);
    }

    #[test]
    fn test_example3() {
        let nums = vec![3, 3];
        let target = 6;
        let expected = vec![0, 1];
        assert_eq!(two_sum(nums, target), expected);
    }
}
