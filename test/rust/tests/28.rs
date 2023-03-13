fn str_str(haystack: String, needle: String) -> i32 {
    let haystack_len = haystack.len();
    let needle_len = needle.len();

    if needle_len == 0 {
        return 0;
    }

    if needle_len > haystack_len {
        return -1;
    }

    for i in 0..=haystack_len - needle_len {
        if &haystack[i..i + needle_len] == needle {
            return i as i32;
        }
    }

    -1
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_example1() {
        let haystack = "sadbutsad".to_string();
        let needle = "sad".to_string();
        let expected_output = 0;
        let output = str_str(haystack, needle);
        assert_eq!(output, expected_output);
    }

    #[test]
    fn test_example2() {
        let haystack = "leetcode".to_string();
        let needle = "leeto".to_string();
        let expected_output = -1;
        let output = str_str(haystack, needle);
        assert_eq!(output, expected_output);
    }
}
