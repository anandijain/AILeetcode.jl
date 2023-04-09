using Cascadia, HTTP, JSON3, DataFrames, CSV, Gumbo, OpenAIReplMode

p_content(p) = p.data.question.content
text_prompt(p) = text(parsehtml(p_content(p)).root)
code_snippets(c) = c.data.question.codeSnippets

slugs = readlines("slugs.txt")
dir = _data("data")
# fns =readdir(dir;join=true)

# fn, fnp = fns[1:2]
# p = fnp
# c = JSON3.read(read(fn, String))
# p = JSON3.read(read(fnp, String))
# ps = filter(endswith("_prompt.json"), fns)
# cs = filter(endswith("_code.json"), fns)
# ts = collect(zip(ps, cs))


# text_prompt.()

# this improves file structure
# for slug in slugs
#     sdir = joinpath(dir, slug)
#     spdir = joinpath(sdir, "prompt")
#     solndir = joinpath(sdir, "solutions")
#     mkpath(solndir)
#     if isdir(spdir) && !isempty(readdir(spdir))
#         continue
#     end
#     fnp = joinpath(dir, slug * "_prompt.json")
#     fnc = joinpath(dir, slug * "_code.json")
#     mkpath(spdir)
#     run(`mv $fnp $spdir`)
#     run(`mv $fnc $spdir`)
# end

lang = "Rust"
rust_prompts = []
spdir ="/Users/anand/.julia/dev/AILeetcode/data/data/two-sum/prompt"
slug = "two-sum"



my_prompt = "Do not provide an explanation, just code in $lang. Be sure to annotate all code blocks with triple backticks (```)."

# full_prompt = join([tp, rust_code], "\n\n")
# foo = replchat(full_prompt)
# codeblocks(foo)
lang = "C"
all_prompts = []

most_likely_premium_probs = []
other_bad = []

@showprogress for slug in slugs
    sdir = joinpath(dir, slug)
    spdir = joinpath(sdir, "prompt")
    solndir = joinpath(sdir, "solutions")
    fnp = joinpath(spdir, slug * "_prompt.json")
    fnc = joinpath(spdir, slug * "_code.json")
    solnfn = joinpath(solndir, "$lang.txt")

    
    c = JSON3.read(read(fnc, String))
    p = JSON3.read(read(fnp, String))
    
    qid = c.data.question.questionId
    
    @info qid, slug
    if isfile(solnfn)
        continue
    end
    if isnothing(p_content(p))
        push!(most_likely_premium_probs, qid)
        continue
    end

    tp = text_prompt(p)
    cs = code_snippets(c)

    lang_idx = findfirst(x->x.lang == lang, cs)
    if isnothing(lang_idx)
        push!(other_bad, qid)
        continue
    end
    lang_code = cs[lang_idx].code

    full_prompt = join([tp, lang_code], "\n\n")
    push!(all_prompts, (slug, full_prompt))
    # println(full_prompt)
    soln = replchat(full_prompt)
    chat_reset!()
    write(solnfn, getc(soln))
end

# for (s,p) in all_prompts
#     write(joinpath("temp_python_prompts", "$s.txt"), p)
# end
