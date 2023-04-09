
# reduced 

http https://leetcode.com/problems/two-sum/submit/ \
    Cookie:'csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages="12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4; _dd_s=rum=0&expire=1680975987685'  \
    Referer:https://leetcode.com/problems/two-sum/ \
    X-Csrftoken:U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ \
    lang=cpp \
    question_id=1 \
    typed_code='class Solution { public: vector<int> twoSum(vector<int>& nums, int target) { } };'


http https://leetcode.com/problems/two-sum/submit/ \
    Cookie:'csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages="12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4; _dd_s=rum=0&expire=1680975987685'  \
    Referer:https://leetcode.com/problems/two-sum/ \
    X-Csrftoken:U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ \
    lang=rust \
    question_id=1 \
    typed_code="""use std::collections::HashMap;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut map: HashMap<i32, i32> = HashMap::new();
        
        for (i, num) in nums.iter().enumerate() {
            let complement = target - num;
            
            if let Some(&index) = map.get(&complement) {
                return vec![index, i as i32];
            }
            
            map.insert(*num, i as i32);
        }
        
        vec![] // This line should not be reached as the problem states there is always a solution
    }
}
"""


http https://leetcode.com/submissions/detail/930268543/check/ \
    Cookie:'csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages="12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4; _dd_s=rum=0&expire=1680975987685' \
    Referer:https://leetcode.com/problems/two-sum/ \
    X-Csrftoken:U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ \
    Content-Type:application/json


http https://leetcode.com/submissions/detail/930396894/check/ \
    Cookie:'csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages="12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4; _dd_s=rum=0&expire=1680975987685' \
    Referer:https://leetcode.com/problems/two-sum/ \
    X-Csrftoken:U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ \
    Content-Type:application/json


# gets prompt text
curl 'https://leetcode.com/graphql/' \
  -H 'authorization;' \
  -H 'baggage: sentry-environment=production,sentry-release=55948cfa,sentry-transaction=%2Fproblems%2F%5Bslug%5D%2F%5B%5B...tab%5D%5D,sentry-public_key=2a051f9838e2450fbdd5a77eb62cc83c,sentry-trace_id=9b2c255fb8af4527a82a612d2aecca69,sentry-sample_rate=0.004' \
  -H 'cookie: csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages="12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4; _dd_s=rum=0&expire=1680978336229' \
  -H 'random-uuid: e59ef943-e94d-945c-c1d1-05e10f8fa02b' \
  -H 'referer: https://leetcode.com/problems/two-sum/' \
  -H 'sentry-trace: 9b2c255fb8af4527a82a612d2aecca69-a0474af9abe015cb-0' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36' \
  -H 'x-csrftoken: U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ' \
  --data-raw $'{"query":"\\n    query questionContent($titleSlug: String\u0021) {\\n  question(titleSlug: $titleSlug) {\\n    content\\n    mysqlSchemas\\n  }\\n}\\n    ","variables":{"titleSlug":"two-sum"},"operationName":"questionContent"}' \
  --compressed
  

# code snippets
curl 'https://leetcode.com/graphql/' \
  -H 'authorization;' \
  -H 'baggage: sentry-environment=production,sentry-release=55948cfa,sentry-transaction=%2Fproblems%2F%5Bslug%5D%2F%5B%5B...tab%5D%5D,sentry-public_key=2a051f9838e2450fbdd5a77eb62cc83c,sentry-trace_id=9b2c255fb8af4527a82a612d2aecca69,sentry-sample_rate=0.004' \
  -H 'cookie: csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages="12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4; _dd_s=rum=0&expire=1680978336229' \
  -H 'random-uuid: e59ef943-e94d-945c-c1d1-05e10f8fa02b' \
  -H 'referer: https://leetcode.com/problems/two-sum/' \
  -H 'sentry-trace: 9b2c255fb8af4527a82a612d2aecca69-a288e50897b4e14c-0' \
  -H 'x-csrftoken: U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ' \
  --data-raw '{"query":"\\n    query questionEditorData($titleSlug: String\u0021) {\\n  question(titleSlug: $titleSlug) {\\n    questionId\\n    questionFrontendId\\n    codeSnippets {\\n      lang\\n      langSlug\\n      code\\n    }\\n    envInfo\\n    enableRunCode\\n  }\\n}\\n    ","variables":{"titleSlug":"two-sum"},"operationName":"questionEditorData"}' \
  --compressed

curl 'https://leetcode.com/graphql/' \
                                  -H 'authority: leetcode.com' \
                                  -H 'accept: */*' \
                                  -H 'accept-language: en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7' \
                                  -H 'authorization;' \
                                  -H 'baggage: sentry-environment=production,sentry-release=55948cfa,sentry-transaction=%2Fproblems%2F%5Bslug%5D%2F%5B%5B...tab%5D%5D,sentry-public_key=2a051f9838e2450fbdd5a77eb62cc83c,sentry-trace_id=9b2c255fb8af4527a82a612d2aecca69,sentry-sample_rate=0.004' \
                                  -H 'content-type: application/json' \
                                  -H 'cookie: csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages="12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4; _dd_s=rum=0&expire=1680978336229' \
                                  -H 'dnt: 1' \
                                  -H 'origin: https://leetcode.com' \
                                  -H 'random-uuid: e59ef943-e94d-945c-c1d1-05e10f8fa02b' \
                                  -H 'referer: https://leetcode.com/problems/two-sum/' \
                                  -H 'sec-ch-ua: "Google Chrome";v="111", "Not(A:Brand";v="8", "Chromium";v="111"' \
                                  -H 'sec-ch-ua-mobile: ?0' \
                                  -H 'sec-ch-ua-platform: "macOS"' \
                                  -H 'sec-fetch-dest: empty' \
                                  -H 'sec-fetch-mode: cors' \
                                  -H 'sec-fetch-site: same-origin' \
                                  -H 'sentry-trace: 9b2c255fb8af4527a82a612d2aecca69-a288e50897b4e14c-0' \
                                  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36' \
                                  -H 'x-csrftoken: U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ' \
                                  --data-raw '{"query":"\\n    query questionEditorData($titleSlug: String\u0021) {\\n  question(titleSlug: $titleSlug) {\\n    questionId\\n    questionFrontendId\\n    codeSnippets {\\n      lang\\n      langSlug\\n      code\\n    }\\n    envInfo\\n    enableRunCode\\n  }\\n}\\n    ","variables":{"titleSlug":"two-sum"},"operationName":"questionEditorData"}' \
                                  --compressed 

http https://leetcode.com/graphql/ \
    Authority:leetcode.com \
    Accept:'*/*' \
    Accept-Language:'en-US, en;q=0.9, zh-CN;q=0.8, zh;q=0.7' \
    Baggage:'sentry-environment=production, sentry-release=55948cfa, sentry-transaction=%2Fproblems%2F%5Bslug%5D%2F%5B%5B...tab%5D%5D, sentry-public_key=2a051f9838e2450fbdd5a77eb62cc83c, sentry-trace_id=9b2c255fb8af4527a82a612d2aecca69, sentry-sample_rate=0.004' Cookie:'csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages="12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4; _dd_s=rum=0&expire=1680978336229' \
    Dnt:1 \
    Origin:https://leetcode.com \
    Random-Uuid:e59ef943-e94d-945c-c1d1-05e10f8fa02b \
    Referer:https://leetcode.com/problems/two-sum/ \
    Sec-Ch-Ua:'"Google Chrome";v="111", Not(A:Brand";v="8", "Chromium";v="111' \
    Sec-Ch-Ua-Mobile:'?0' \
    Sec-Ch-Ua-Platform:macOS \
    Sec-Fetch-Dest:empty \
    Sec-Fetch-Mode:cors \
    Sec-Fetch-Site:same-origin \
    Sentry-Trace:9b2c255fb8af4527a82a612d2aecca69-a288e50897b4e14c-0 \
    User-Agent:'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36' \
    X-Csrftoken:U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ \
    Content-Type:application/json

cat data/har/leetcode.com.har \
    | jq '.log.entries
            | map(select(.response.content.text | .?
                           | contains("Given an array of integers "))
                    | .request.url)'

cat data/har/leetcode.com.har \
    | jq '.log.entries
            | map({ url: .request.url,
                    hasMyData: (.response.content.text | .?
                                  | contains("Given an array of integers "))})'