from selenium import webdriver
import time
from webdriver_manager.chrome import ChromeDriverManager

driver = webdriver.Chrome(ChromeDriverManager().install())

driver.get("https://react-shopping-cart-67954.firebaseapp.com/")
time.sleep(1)

print(driver.title)

#Clickin M
driver.find_element_by_xpath("//*[@id='root']/div/main/div/div[1]/div[3]/label/span").click()

time.sleep(1)

#Declicking M
driver.find_element_by_xpath("//*[@id='root']/div/main/div/div[1]/div[3]/label/span").click()

time.sleep(1)



#Clicking L
driver.find_element_by_xpath("//*[@id='root']/div/main/div/div[1]/div[5]/label/span").click()

time.sleep(1)



for i in range(6):
    driver.find_element_by_xpath("//*[@id='root']/div/main/main/div/div[1]/button").click()
    time.sleep(1)


for i in range(2):
    driver.find_element_by_xpath("//*[@id='root']/div/div/div/div[2]/div/div[2]/div/button[1]").click()
    time.sleep(1)


driver.find_element_by_xpath("//*[@id='root']/div/div/div/div[3]/button").click()
time.sleep(1)
