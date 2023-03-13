fn max_profit(prices: Vec<i32>) -> i32 {
    let mut max_profit = 0;
    let mut min_price = i32::MAX;

    for price in prices {
        min_price = std::cmp::min(min_price, price);
        max_profit = std::cmp::max(max_profit, price - min_price);
    }

    max_profit
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let prices = vec![7, 1, 5, 3, 6, 4];
        assert_eq!(max_profit(prices), 5);
    }

    #[test]
    fn test_example2() {
        let prices = vec![7, 6, 4, 3, 1];
        assert_eq!(max_profit(prices), 0);
    }
}
