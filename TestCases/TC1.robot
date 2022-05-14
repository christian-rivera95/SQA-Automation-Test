*** Settings ***
Library           SeleniumLibrary


*** Test Cases ***
React shopping cart test
    open react site
    filter M size add 1 to cart and unselect M size
    select L size and add 6 items to cart
    unselect 4 shirts from cart
    checkout
    

 


*** Keywords ***
open react site
    Create Webdriver    Chrome    executable_path=C:/WebDrivers/chromedriver.exe
    go to       https://react-shopping-cart-67954.firebaseapp.com/

filter M size add 1 to cart and unselect M size
    Wait For Condition                 return document.readyState=="complete"
    click element       //*[@id="root"]/div/main/div/div[1]/div[3]/label/span
    wait until page contains element        //*[@id="root"]/div/main/main/div/div/button
    click button        //*[@id="root"]/div/main/main/div/div/button
    click element       //*[@id="root"]/div/main/div/div[1]/div[3]/label/span


select L size and add 6 items to cart
    click element       //*[@id="root"]/div/main/div/div[1]/div[5]/label/span
    wait until page contains element        //*[@id="root"]/div/main/main/div/div[1]/button
    FOR    ${index}    IN RANGE    1    7
        click button       //*[@id="root"]/div/main/main/div/div[1]/button
    END

unselect 4 shirts from cart
    wait until page contains element        //*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/div/button[1]
    FOR    ${index}    IN RANGE    1    5
        click button       //*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/div/button[1]
    END

checkout
    wait until page contains element        //*[@id="root"]/div/div/div/div[3]/button
    click button        //*[@id="root"]/div/div/div/div[3]/button