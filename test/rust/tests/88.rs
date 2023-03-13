fn merge(nums1: &mut Vec<i32>, m: i32, nums2: &mut Vec<i32>, n: i32) {
    let (mut i, mut j, mut k) = (m - 1, n - 1, m + n - 1);

    while i >= 0 && j >= 0 {
        if nums1[i as usize] > nums2[j as usize] {
            nums1[k as usize] = nums1[i as usize];
            k -= 1;
            i -= 1;
        } else {
            nums1[k as usize] = nums2[j as usize];
            k -= 1;
            j -= 1;
        }
    }

    while j >= 0 {
        nums1[k as usize] = nums2[j as usize];
        k -= 1;
        j -= 1;
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let mut nums1 = vec![1,2,3,0,0,0];
        let m = 3;
        let mut nums2 = vec![2,5,6];
        let n = 3;
        let expected_output = vec![1,2,2,3,5,6];
        merge(&mut nums1, m, &mut nums2, n);
        assert_eq!(nums1, expected_output);
    }

    #[test]
    fn test_example2() {
        let mut nums1 = vec![1];
        let m = 1;
        let mut nums2 = vec![];
        let n = 0;
        let expected_output = vec![1];
        merge(&mut nums1, m, &mut nums2, n);
        assert_eq!(nums1, expected_output);
    }

    #[test]
    fn test_example3() {
        let mut nums1 = vec![0];
        let m = 0;
        let mut nums2 = vec![1];
        let n = 1;
        let expected_output = vec![1];
        merge(&mut nums1, m, &mut nums2, n);
        assert_eq!(nums1, expected_output);
    }
}
