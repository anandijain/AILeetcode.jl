#!/usr/bin/env fish

set lines []
while read -l line
    set -a lines $line
end < my_file.txt

set lines []
set -l count 0
while read -l line
    set -a lines $line
    set count (math $count + 1)
    if test $count -eq 10
        break
    end
end < my_file.txt

set lim 10
for i in (seq 2 $lim)
    set line $lines[$i]
    set url "https://leetcode.com/problems/$line"
    echo "$i: $url"
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
        -H "referer: $url" \
        -H 'sec-ch-ua: "Google Chrome";v="111", "Not(A:Brand";v="8", "Chromium";v="111"' \
        -H 'sec-ch-ua-mobile: ?0' \
        -H 'sec-ch-ua-platform: "macOS"' \
        -H 'sec-fetch-dest: empty' \
        -H 'sec-fetch-mode: cors' \
        -H 'sec-fetch-site: same-origin' \
        -H 'sentry-trace: 9b2c255fb8af4527a82a612d2aecca69-a0474af9abe015cb-0' \
        -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36' \
        -H 'x-csrftoken: U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ' \
        --data-raw '{\"query":\"\\n    query questionContent(\$titleSlug: String\u0021) {\\n  question(titleSlug: \$titleSlug) {\\n    content\\n    mysqlSchemas\\n  }\\n}\\n    \",\"variables\":{\"titleSlug\":\"$line\"},\"operationName\":\"questionContent\"}' \
        --compressed
        -o "data/test/$line.json"


end



for i in (seq 1 (count $lines))
    set line $lines[$i]
    set url "https://leetcode.com/problems/$line"
    curl 'https://leetcode.com/graphql/' \
        -H "authority: leetcode.com" \
        -H "referer: $url" \
        -H "x-csrftoken: U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ" \
        -H "cookie: csrftoken=U38VtRxr5YfvLADqqgCQvJkSHYwu3X6laeFJqGf464BYKRZ0IGF23hu9DUdQKBJJ; messages=\"12877f56d355501b9812ecfb2d621ba942950006$[[\"__json_message\"\0540\05425\054\"Successfully signed in as anandjain.\"]]"\; LEETCODE_SESSION=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfYXV0aF91c2VyX2lkIjoiMzYwNTc2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjEwNWIxYWQ3ZjNhOWNhMmZiMzc1N2FhNzEzZjQ4MmFiNTMxOWVmNyIsImlkIjozNjA1NzY4LCJlbWFpbCI6ImRhaG1laC5hbG1vc0BnbWFpbC5jb20iLCJ1c2VybmFtZSI6ImFuYW5kamFpbiIsInVzZXJfc2x1ZyI6ImFuYW5kamFpbiIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9hdmF0YXJzL2F2YXRhcl8xNjc4OTA5MTg5LnBuZyIsInJlZnJlc2hlZF9hdCI6MTY4MDk3NTA3MiwiaXAiOiI3My4xMjYuOTYuMjE0IiwiaWRlbnRpdHkiOiI3MjNjNTEyNjNjODBmNmJlNzlmYTIxMTkxZWUwYjM4NyIsInNlc3Npb25faWQiOjM3Nzk3NzYzLCJfc2Vzc2lvbl9leHBpcnkiOjEyMDk2MDB9.jVA4apdMCwgJ2pT-1PnCyyZLVygy98kW5FqvSHku2C4\; _dd_s=rum=0\&expire=1680978336229" \
        -H "content-type: application/json" \
        --data-binary '{"operationName":"getQuestionDetail","variables":{"titleSlug":"'$line'"},"query":"query getQuestionDetail(\$titleSlug: String!) {\n  question(titleSlug: $titleSlug) {\n    questionId\n    questionFrontendId\n    boundTopicId\n    title\n    titleSlug\n    content\n    translatedTitle\n    translatedContent\n    isPaidOnly\n    difficulty\n    likes\n    dislikes\n    isLiked\n    similarQuestions\n    contributors {\n      username\n      profileUrl\n      avatarUrl\n      __typename\n    }\n    langToValidPlayground\n    topicTags {\n      name\n      slug\n      translatedName\n      __typename\n    }\n    companyTagStats\n    codeSnippets {\n      lang\n      langSlug\n      code\n      __typename\n    }\n    stats\n    hints\n    solution {\n      id\n      canSeeDetail\n      __typename\n    }\n    status\n    sampleTestCase\n    metaData\n    judgerAvailable\n    judgeType\n    mysqlSchemas\n    enableRunCode\n    envInfo\n    libraryUrl\n    __typename\n  }\n}\n\"}'

end