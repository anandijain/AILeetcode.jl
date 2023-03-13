fn generate(num_rows: i32) -> Vec<Vec<i32>> {
    let mut result = vec![];

    for i in 0..num_rows {
        let mut row = vec![1; (i + 1) as usize];

        for j in 1..i {
            row[j as usize] = result[(i - 1) as usize][(j - 1) as usize] + result[(i - 1) as usize][j as usize];
        }

        result.push(row);
    }

    result
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let num_rows = 5;
        let result = vec![
            vec![1],
            vec![1, 1],
            vec![1, 2, 1],
            vec![1, 3, 3, 1],
            vec![1, 4, 6, 4, 1],
        ];
        assert_eq!(generate(num_rows), result);
    }

    #[test]
    fn test_example2() {
        let num_rows = 1;
        let result = vec![vec![1]];
        assert_eq!(generate(num_rows), result);
    }
}
