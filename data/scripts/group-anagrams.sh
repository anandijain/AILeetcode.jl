#!/usr/bin/env fish

curl 'https://leetcode.com/graphql/' \
  -H 'content-type: application/json' \
  -H 'cookie: csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages="12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4; _dd_s=rum=0&expire=1680978336229' \
  -H 'referer: https://leetcode.com/problems/group-anagrams' \
  -H 'x-csrftoken: U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ' \
  --data-raw '{"query":"\\n    query questionContent($titleSlug: String\u0021) {\\n  question(titleSlug: $titleSlug) {\\n    content\\n    mysqlSchemas\\n  }\\n}\\n    ","variables":{"titleSlug":"group-anagrams"},"operationName":"questionContent"}' \
  --compressed \
  -o ../data/group-anagrams_prompt.json


curl 'https://leetcode.com/graphql/' \
                                  -H 'content-type: application/json' \
                                  -H 'cookie: csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages="12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4; _dd_s=rum=0&expire=1680978336229' \
                                  -H 'referer: https://leetcode.com/problems/two-sum/' \
                                  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36' \
                                  -H 'x-csrftoken: U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ' \
                                  --data-raw '{"query":"\\n    query questionEditorData($titleSlug: String\u0021) {\\n  question(titleSlug: $titleSlug) {\\n    questionId\\n    questionFrontendId\\n    codeSnippets {\\n      lang\\n      langSlug\\n      code\\n    }\\n    envInfo\\n    enableRunCode\\n  }\\n}\\n    ","variables":{"titleSlug":"group-anagrams"},"operationName":"questionEditorData"}' \
                                  --compressed \
                                  -o ../data/group-anagrams_code.json

 