*** Settings *** 
Library     Selenium2Library

*** Variables ***
${URL}  https://react-shopping-cart-67954.firebaseapp.com/ 
${Browser}  chrome

*** KeyWords ***
LaunchBrowser
    [Arguments]     ${URL}      ${Browser} 
    OPEN BROWSER   ${URL}       ${Browser}

*** Test Cases *** 

Test One
    [Documentation]    Launching the browser
    LaunchBrowser  ${URL}      ${Browser}
    Maximize Browser Window
    Sleep   1s
    Wait Until Element Is Visible    xpath://*[@id="root"]/div/main/div/div[1]/div[3]/label/span
    Click Element   xpath://*[@id="root"]/div/main/div/div[1]/div[3]/label/span
    Sleep   1s
    Click Element   xpath://*[@id="root"]/div/main/main/div/div/button

Test Two
    [Documentation]    Changing filter size M and L
    Click Element   xpath://*[@id="root"]/div/main/div/div[1]/div[3]/label/span
    Click Element   xpath://*[@id="root"]/div/main/div/div[1]/div[5]/label/span

Test Three
    [Documentation]    Compulsively adding 6 shirts to the cart
    Sleep   1s
    FOR     ${index}    IN RANGE    1    7
        Sleep   1s
        Click Button    xpath://*[@id="root"]/div/main/main/div/div[6]/button
    END

Test Four
    [Documentation]    Coming back to the senses and deleting 4 shirts
        Sleep   1s
    FOR     ${index}    IN RANGE    1    5
        Sleep   1s
        Click Button    xpath://*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/div/button[1]
    END

Test Five
    [Documentation]    Proceeding to the checkout
    Click Element   xpath://*[@id="root"]/div/div/div/div[3]/button


