from time import sleep
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
# initialize the driver
driver = webdriver.Firefox()

# Navigate to leetcode login page
driver.get("https://leetcode.com/accounts/login/")

# Locate email and password fields and enter your login credentials
wait = WebDriverWait(driver, 10)
sleep(5)
email = wait.until(EC.presence_of_element_located((By.NAME, "login")))
email.send_keys("anandj@uchicago.edu")

password = wait.until(EC.presence_of_element_located((By.NAME, "password")))
password.send_keys("password")

# Submit the login form
password.send_keys(Keys.RETURN)
sleep(5)
wait = WebDriverWait(driver, 10)

# Wait for the page to load and verify login success
assert "LeetCode" in driver.title

url = "https://leetcode.com/problem-list/top-interview-questions/"
driver.get(url)
wait = WebDriverWait(driver, 10)
sleep(5)

table_div = driver.find_element('xpath', '//div[@role="table"]')
probs = table_div.find_elements('css selector', 'a')
links = []
for row in probs:
    # link = row.find_elements('xpath', './/a')
    # if link:
    links.append(row.get_attribute("href"))

problem_texts = []
link = links[0]
i=0
for i, link in enumerate(links):
    if "solution" in link:
        continue
    print(link)
    driver.get(link)
    wait = WebDriverWait(driver, 10)
    sleep(5)
    xx = driver.find_element('xpath', "/html/head/meta[@name='description']")
    c = xx.get_attribute("content")
    filename = f"data/{i+1}.txt"  # Add 1 to index to start counting from 1 instead of 0
    with open(filename, 'w') as f:
        f.write(c)

driver.quit()
