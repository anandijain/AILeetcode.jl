using WebDriver
  
# Start a new Firefox session
driver = Firefox()

# Load the LeetCode login page
navigate(driver, "https://leetcode.com/accounts/login/")

# Find the login fields and enter your username and password
user_field = find_element(driver, By.Id("id_login"))
send_keys(user_field, "your_username_here")

pass_field = find_element(driver, By.Id("id_password"))
send_keys(pass_field, "your_password_here")

# Submit the login form
submit_form(find_element(driver, By.XPath("//form[@action='/accounts/login/']")))

# Navigate to the problem page you want to scrape
navigate(driver, "https://leetcode.com/problems/two-sum/")

# Find the problem description element and print its text
problem_desc = find_element(driver, By.CssSelector(".description__24sA"))
println(get_text(problem_desc))

# Close the browser window
close(driver)