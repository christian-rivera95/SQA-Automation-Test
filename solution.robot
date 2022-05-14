*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://react-shopping-cart-67954.firebaseapp.com/ 
${browser}  Chrome


*** Keywords ***
AddSix
    FOR     ${index}    IN RANGE    1    7
        Click Button    xpath://*[@id="root"]/div/main/main/div/div[${index}]/button

        Sleep   1s
    END

DeleteFour
    FOR     ${index}    IN RANGE    5   1   -1
        Click Button    //*[@id="root"]/div/div/div/div[2]/div[${index}]/button
                        
        Sleep   1s
    END

*** Test Cases ***

FirstTest
    #Use the size filter to select size M and add to cart 1 shirt
    Create Webdriver    Chrome    executable_path=chromedriver.exe
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://*[@id="root"]/div/main/div/div[1]/div[3]/label/span
    Wait Until Element Is Visible   xpath://*[@id="root"]/div/main/div/div[1]/div[3]/label/span
    Sleep   2s
    Click Element   xpath://*[@id="root"]/div/main/div/div[1]/div[3]/label/input/following-sibling::span
    Sleep   2s


SecondTest    
    #Use the size filter to unselect M size and select L size.
    Click Button   xpath://*[@id="root"]/div/main/main/div/div/button
    Sleep   2s
    #Unselect M
    Click Element   xpath://*[@id="root"]/div/main/div/div[1]/div[3]/label/input/following-sibling::span
    Sleep   2s
    #Select L
    Click Element   xpath://*[@id="root"]/div/main/div/div[1]/div[5]/label/input/following-sibling::span
    Sleep   2s


ThirdTest     
    #Compulsively add 6 shirts to your cart.
    AddSix


FourthTest
    #Come back to your senses and delete 4 shirts from your cart.
    DeleteFour

    
FifthTest    
    #Checkout

    Click Button    xpath://*[@id="root"]/div/div/div/div[3]/button
    Sleep   2s
    Close Browser
    Log     Test Completed


