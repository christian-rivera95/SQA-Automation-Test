*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}      Chrome
${url}          https://react-shopping-cart-67954.firebaseapp.com/
${EXECDIR}      C:\Users\juanm\chromedrivers.exe
${M}            xpath:/html/body/div/div/main/div/div[1]/div[3]/label/span
${Add}          xpath:/html/body/div/div/main/main/div/div/button
${L}            xpath://*[@id="root"]/div/main/div/div[1]/div[5]/label/span
@{List}         ${M}    ${Add}    ${M}    ${L}  
*** Test Cases ***
Visit React shopping cart demo
    Open browser    ${url}   ${Browser}
        FOR    ${item}    IN    @{List}
            Click Element   ${item}
            Sleep   3s
        END 


    FOR     ${item}    IN RANGE    1   7
        Click Element   xpath=/html/body/div/div/main/main/div/div[${item}]/button
        Sleep   1s
        Click Element   xpath=//*[@id="root"]/div/div/button
        Sleep   1s
    END

    Click Element    xpath=//*[@id="root"]/div/div/button/div
    Sleep   3s

    FOR     ${item}     IN RANGE    1   5
        Click Element    xpath=/html/body/div/div/div/div/div[2]/div[1]/button
        Sleep   1s
    END
    Click Element   xpath=/html/body/div/div/div/div/div[3]/button
    Sleep   3s
    Close browser



