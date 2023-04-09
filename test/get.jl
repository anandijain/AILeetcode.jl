using CSV, DataFrames
base = "https://leetcode.com/problems/"
ls = readlines("slugs.txt")
replace_str = read("curl_prob.txt", String)

for l in ls
    url = base * l
    x = replace(replace_str, "PROBLEM_URL"=>url, "PROBLEM_SLUG"=>l)
    write(_data("scripts/$l.sh"), x)
end
# for file in *
#     chmod u+x $file
#     ./$file 
# end