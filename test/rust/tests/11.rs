fn max_area(height: Vec<i32>) -> i32 {
    let (mut left, mut right) = (0, height.len() - 1);
    let mut max_area = 0;

    while left < right {
        let h_l = height[left];
        let h_r = height[right];
        let area = (right - left) as i32 * std::cmp::min(h_l, h_r);
        max_area = std::cmp::max(max_area, area);

        if h_l < h_r {
            left += 1;
        } else {
            right -= 1;
        }
    }

    max_area
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let height = vec![1, 8, 6, 2, 5, 4, 8, 3, 7];
        assert_eq!(max_area(height), 49);
    }

    #[test]
    fn test_example2() {
        let height = vec![1, 1];
        assert_eq!(max_area(height), 1);
    }
}
