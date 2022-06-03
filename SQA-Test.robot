*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${index} =    Set Variable    0
${index1} =    Set Variable    0

*** Test Cases ***
Demo Start
    # enter to webpage and selects size M and adds 1 shirt to the cart
    Open Browser   https://react-shopping-cart-67954.firebaseapp.com/   Chrome

Select Filter and Place Order
    Click Element    xpath://*[@id="root"]/div/main/div/div[1]/div[3]/label/span
    Sleep    2s
    Click Element    xpath://*[@id="root"]/div/main/main/div/div/button
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div/button
    Sleep    1s
    
    # unselects the size M to select the size L
    Click Element    xpath://*[@id="root"]/div/main/div/div[1]/div[3]/label/span
    Sleep    2s
    Click Element    xpath://*[@id="root"]/div/main/div/div[1]/div[5]/label/span
    Sleep    1s

Complusive add and remove shirt    
    # adds 6 shirts to the cart
    FOR    ${index}    IN RANGE  0  6
        Click Element    xpath://*[@id="root"]/div/main/main/div/div[1]/button
		Sleep    1s
        Click Element    xpath://*[@id="root"]/div/div/button/span
        Sleep    1s
        ${index}=    Evaluate    ${index} + 1
    END
    
    Click Element    xpath://*[@id="root"]/div/div/button/div
    Sleep    2s

    # deletes 4 shirts from the cart
    FOR    ${index1}    IN RANGE  0  4
        Click Element    xpath://*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/div/button[1]
		Sleep    1s
        ${index1}=    Evaluate    ${index} + 1
    END

Checkout    
    Click Element    xpath://*[@id="root"]/div/div/div/div[3]/button
    Sleep    2s
    Close Browser
    
*** Keywords ***
