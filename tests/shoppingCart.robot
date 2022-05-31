*** Settings ***
Library  Selenium2Library

Suite Setup     Open Browser    ${URL}   ${BROWSER}


*** Variables ***
${URL}  https://react-shopping-cart-67954.firebaseapp.com/
${BROWSER}  Chrome
${selected_M_Size}      xpath://*[@id="root"]/div/main/div/div[1]/div[3]/label/span  
${selected_L_Size}      xpath://*[@id="root"]/div/main/div/div[1]/div[5]/label/span  
${close_cart}           xpath=//*[@id="root"]/div/div/button
${add_M_shirt}          xpath://*[@id="root"]/div/main/main/div/div/button
${add_L_shirts}         xpath://*[@id="root"]/div/main/main/div/div[1]/button
${delete_from_cart}     xpath=//*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/div/button[1]
${checkout_button}      xpath=//*[@id="root"]/div/div/div/div[3]/button


*** Test Cases ***
Clicking size M option  
    [documentation]  This test case select size M 
    # Use the size filter to select size M and add to cart 1 shirt.
    Select Size   ${selected_M_Size}
    Wait Until Page Contains Element  ${add_M_shirt}  timeout=5
    Wait Until Element Is Visible  ${add_M_shirt}  timeout=5
    Sleep   2s
    Click Element  ${add_M_shirt} 
    Click Element  ${close_cart}  

Clicking size L option 
    [documentation]  This test case select size L 
    # Use the size filter to unselect M size and select L size.
    Select Size   ${selected_M_Size}
    Select Size  ${selected_L_Size}
    Sleep   2s

Add to cart
    [documentation]  This test case adds to cart
    # Compulsively add 6 shirts to your cart.
    Add to Cart

Delete from cart
    [documentation]  This test case delete from cart and do checkout
    # Compulsively add 6 shirts to your cart.
    Delete from cart

Do checkout
    [documentation]  This test case do checkout
    # Come back to your senses and delete 4 shirts from your cart.
    Click Element  ${checkout_button}
    Close All Browsers


*** Keywords **
Close All Browsers
    Close Browser

Select Size 
    [Arguments]      ${search_size}
    Click Element  ${search_size}

Add to Cart
    FOR  ${index}  IN RANGE  6
        Click Element  ${add_L_shirts} 
    END

Delete from cart 
    FOR  ${index}  IN RANGE  4
        Click Element  ${delete_from_cart}
    END