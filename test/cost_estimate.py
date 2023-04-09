import os
import tiktoken
"""
We are excited to announce GPT-4 has a new pricing model, in which we have reduced the price of the prompt tokens. 

 

For our models with 8k context lengths (e.g. gpt-4 and gpt-4-0314), the price is:

$0.03/1k prompt tokens

$0.06/1k sampled tokens

 

For our models with 32k context lengths (e.g. gpt-4-32k and gpt-4-32k-0314), the price is:

$0.06/1k prompt tokens

$0.12/1k sampled tokens
"""

enc = tiktoken.encoding_for_model("gpt-4")
dir = "/Users/anand/.julia/dev/AILeetcode/temp_python_prompts"
result = []

for filename in os.listdir(dir):
    filepath = os.path.join(dir, filename)
    with open(filepath, "r") as file:
        content = file.read()
        encoded = enc.encode(content)
        result.append(encoded)

print(result)
l = list(map(len, result)) # 294546
prompt_cost = (sum(l) / 1000) * 0.03

# lets assume that the result is half the length of prompt
sampled_cost = (sum(l) / 2000) * 0.06

print(sum([prompt_cost, sampled_cost]))