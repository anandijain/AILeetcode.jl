// Using Horner's Rule
pub fn title_to_number(column_title: String) -> i32 {
    let base = 'A' as u32 - 1;
    let mut column_number = 0;

    for c in column_title.chars() {
        let digit = c as u32 - base;
        column_number = column_number * 26 + digit;
    }

    column_number as i32
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let column_title = "A".to_string();
        assert_eq!(title_to_number(column_title), 1);
    }

    #[test]
    fn test_example2() {
        let column_title = "AB".to_string();
        assert_eq!(title_to_number(column_title), 28);
    }

    #[test]
    fn test_example3() {
        let column_title = "ZY".to_string();
        assert_eq!(title_to_number(column_title), 701);
    }
}
