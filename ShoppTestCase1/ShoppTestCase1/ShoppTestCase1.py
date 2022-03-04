
from selenium import webdriver
from selenium.webdriver.support.select import Select
import time 


driver = webdriver.Chrome(executable_path = r'C:\Drivers\chromedriver.exe')
driver.get('https://react-shopping-cart-67954.firebaseapp.com/')
time.sleep(2)
driver.maximize_window()

#select size m
cli1 = driver.find_element_by_xpath('//*[@id="root"]/div/main/div/div[1]/div[3]/label/span')
cli1.click()
time.sleep(2)
#pgdw
driver.execute_script("window.scrollTo(0,document.body.scrollHeight)")
time.sleep(2)
#add to cart
cli2 = driver.find_element_by_xpath('//*[@id="root"]/div/main/main/div/div/div[4]')
cli2.click()
time.sleep(2)

cli3 = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[1]/span')
cli3.click()

#unselect size m
cli1.click()
time.sleep(2)
#select size l
cli4 = driver.find_element_by_xpath('//*[@id="root"]/div/main/div/div[1]/div[5]/label/span')
cli4.click()
time.sleep(2)

cli5 = driver.find_element_by_xpath('//*[@id="root"]/div/main/main/div/div[1]/div[4]')
cli5.click()
time.sleep(3)
cli3 = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[1]/span')
cli3.click()
cli5 = driver.find_element_by_xpath('//*[@id="root"]/div/main/main/div/div[2]/div[4]')
cli5.click()
time.sleep(3)
cli3 = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[1]/span')
cli3.click()
cli5 = driver.find_element_by_xpath('//*[@id="root"]/div/main/main/div/div[3]/div[4]')
cli5.click()
time.sleep(3)
cli3 = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[1]/span')
cli3.click()
cli5 = driver.find_element_by_xpath('//*[@id="root"]/div/main/main/div/div[4]/div[4]')
cli5.click()
time.sleep(3)
cli3 = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[1]/span')
cli3.click()

#pgdw
driver.execute_script("window.scrollTo(0,document.body.scrollHeight)")
time.sleep(2)
cli5 = driver.find_element_by_xpath('//*[@id="root"]/div/main/main/div/div[5]/div[4]')
cli5.click()
time.sleep(3)

cli6 = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[2]/div[2]/div[1]/div[1]')
cli6.click()
time.sleep(2)
cli6 = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[2]/div[2]/div[1]/div[1]')
cli6.click()
time.sleep(2)
cli6 = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[2]/div[2]/div[1]/div[1]')
cli6.click()
time.sleep(2)
cli6 = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[2]/div[2]/div[1]/div[1]')
cli6.click()

cli7 = driver.find_element_by_xpath('//*[@id="root"]/div/div/div[2]/div[3]/button')
cli7.click()


