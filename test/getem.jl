using HTTP, Gumbo, Cascadia
using OpenAIReplMode
using OpenAIReplMode: chat
using AILeetcode
# div class="_1l1MA"

# div role="table"
url = "https://leetcode.com/problem-list/top-interview-questions/"
uri = URI(url)
response = HTTP.get(url)

html = String(response.body)

# Parse the HTML using Gumbo.jl and create a query selector using Cascadia.jl
parsed_html = parsehtml(html)
table_divs = eachmatch(sel"[role=table]", parsed_html.root)

hrefs = []
for div in table_divs
    for a in eachmatch(sel"a", div)
        href = a.attributes["href"]
        push!(hrefs, href)
    end
end

urls = map(x->URI(uri; path = x), hrefs)
url = urls[1]
# Download the webpage HTML using HTTP.jl
response = HTTP.get(url)
html = String(response.body)

# Parse the HTML using Gumbo.jl and create a query selector using Cascadia.jl
html = parsehtml(html)

descr_tags = eachmatch(Selector("meta[property=\"og:description\"]"), html.root)  # Use Cascadia to select all the description tags
descr_tags = eachmatch(sel"meta", html.root)  # Use Cascadia to select all the description tags
descr_texts = [(if haskey(tag.attributes, "content"); tag.attributes["content"] for tag in descr_tags]