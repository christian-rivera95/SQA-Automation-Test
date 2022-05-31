*** Settings ***
Library  Selenium2Library

Suite Setup     Open Browser    ${URL}   ${BROWSER}
Test Setup      My Test Setup      # Before the current test is executed (wait 1 sec)


*** Variables ***
${URL}  https://react-shopping-cart-67954.firebaseapp.com/
${BROWSER}  Chrome
${search_M_size}     xpath=//span[contains(text(),'M')]
${search_L_size}     xpath=//div[@class='sc-bj2vay-1 hcyKTa']//label//span[text()='L']
${size_M_button}      xpath=//div[@class='sc-124al1g-2 keuquD']//button[@class='sc-124al1g-0 jCsgpZ']
${close_cart}        xpath=//button[@class='sc-1h98xa9-0 gFkyvN']//span[contains(text(),'X')]
${size_L_button}      xpath=//div[@class='sc-124al1g-2 dwOYCh']//button[@class='sc-124al1g-0 jCsgpZ']
${delete_from_cart}  xpath=//div[@class='sc-7th5t8-0 jehOnP']//div[2]//div[2]//div[1]//button[1]
${checkout_button}   xpath=//button[@class='sc-1h98xa9-11 gnXVNU']


*** Test Cases ***
Clicking size M option  
    [documentation]  This test case select size M 
    Click Element  ${search_M_size}
    Click Element  ${size_M_button}
    Click Element  ${close_cart}  
    Click Element  ${search_M_size}

Clicking size L option 
    [documentation]  This test case select size L 
    Click Element  ${search_L_size}
    FOR  ${index}  IN RANGE  6
        Click Element  ${size_L_button}
    END

Delete for cart and checkout
    [documentation]  This test case delete from cart and do checkout
    FOR  ${index}  IN RANGE  4
        Click Element  ${delete_from_cart}
    END
    Click Element  ${checkout_button}


*** Keywords ***
My Test Setup
    Sleep    1s
