from time import sleep
import json
import os
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
import pandas as pd
import numpy as np
# initialize the driver
langs = ["c++", "java", "python3", "c", "c#", "javascript", "ruby", "swift", "go", "scala", "kotlin", "rust", "php", "typescript", "racket", "erlang", "elixir", "dart"]

driver = webdriver.Firefox()

# Navigate to leetcode login page
driver.get("https://leetcode.com/accounts/login/")

# Locate email and password fields and enter your login credentials
wait = WebDriverWait(driver, 10)
sleep(5)
email = wait.until(EC.presence_of_element_located((By.NAME, "login")))
email.send_keys("anandj@uchicago.edu")

password = wait.until(EC.presence_of_element_located((By.NAME, "password")))
password.send_keys("$(5GwewCf%~QRLN")

# Submit the login form
password.send_keys(Keys.RETURN)
sleep(5)
wait = WebDriverWait(driver, 10)

# Wait for the page to load and verify login success
assert "LeetCode" in driver.title

url = "https://leetcode.com/problem-list/top-interview-questions/?sorting=W3sic29ydE9yZGVyIjoiQVNDRU5ESU5HIiwib3JkZXJCeSI6IkRJRkZJQ1VMVFkifV0%3D"
driver.get(url)
wait = WebDriverWait(driver, 10)
sleep(5)

table_div = driver.find_element('xpath', '//div[@role="table"]')
probs = table_div.find_elements('css selector', 'a')
ids = []
names = []
urls = []

# Iterate over the WebElements and extract the required data
for prob in probs:
    text_parts = prob.text.split('. ')
    if len(text_parts) != 2:
        continue
    print(text_parts)
    prob_id = int(text_parts[0])
    prob_name = text_parts[1]
    prob_url = prob.get_attribute('href')
    ids.append(prob_id)
    names.append(prob_name)
    urls.append(prob_url)

# Create a DataFrame from the extracted data
df = pd.DataFrame({'prob_id': ids, 'prob_name': names, 'prob_url': urls})
df.to_csv('probs.csv', index=False)
