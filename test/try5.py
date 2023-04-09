import requests
import json
import pandas as pd
df = pd.read_csv("more_probs.csv")
urls = list(map(remove_url_suffix, df.prob_url.tolist()))
url = urls[0]

def get_slug(url):
    scheme, netloc, path, query, fragment = urlsplit(url)
    path_parts = path.split('/')
    return path_parts[-2]

slugs = list(map(get_slug, urls))
with open("slugs.txt", "w") as file:
    for string in slugs:
        file.write(string + "\n")

