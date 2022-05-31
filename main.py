from selenium import webdriver
import time
import chromedriver_binary
from selenium.webdriver.common.by import By

chrome_options=webdriver.ChromeOptions()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--no-sandbox")
chrome_options.add_argument("window-size=1400,2100") 
chrome_options.add_argument('--disable-gpu')

driver=webdriver.Chrome(options=chrome_options)

driver.get("https://react-shopping-cart-67954.firebaseapp.com/")

driver.maximize_window()

# Use the size filter to select size M and add to cart 1 shirt

select_M_Size = driver.find_element(by=By.XPATH, value="//*[@id='root']/div/main/div/div[1]/div[3]/label/span")
select_M_Size.click()

time.sleep(2)
add_M_shirt = driver.find_element(by=By.XPATH, value="//*[@id='root']/div/main/main/div/div/button")
add_M_shirt.click()

# Use the size filter to unselect M size and select L size.

select_M_Size.click()
time.sleep(2)
select_L_Size = driver.find_element(by=By.XPATH, value="//*[@id='root']/div/main/div/div[1]/div[5]/label/span")
select_L_Size.click()

# Compulsively add 6 shirts to your cart.

i = 0
while i < 6:
    add_L_shirts = driver.find_element(by=By.XPATH, value="//*[@id='root']/div/main/main/div/div[1]/button").click()
    i += 1

# Come back to your senses and delete 4 shirts from your cart.

j = 0
while j < 4:
    delete_from_cart = driver.find_element(by=By.XPATH, value="//*[@id='root']/div/div/div/div[2]/div[2]/div[2]/div/button[1]").click()
    j += 1

# Click checkout button.

checkout_button = driver.find_element(by=By.XPATH, value="//*[@id='root']/div/div/div/div[3]/button").click()
