***Settings***
Library  SeleniumLibrary
Library    Screenshot

*** Test Cases ***
TestCases
  Open Browser   https://react-shopping-cart-67954.firebaseapp.com/   Chrome
  Maximize Browser Window
  TestCase1
  TestCase2
  TestCase3
  TestCase4
  TestCase5
  

*** Keywords ***
TestCase1
   [Documentation]    Use the size filter to select size M and add to cart 1 shirt.
   Wait until element is visible   //span[.='M']  timeout=90s
   Click Element     //span[.='M']
   Sleep             20s
   Click Button      //button[contains(text(),'Add to cart')]  
   Take Screenshot

TestCase2
   [Documentation]    Use the size filter to unselect M size and select L size.
   Click Element     //span[.='M']
   Sleep             10s
   Click Element     //span[.='L'] 
   Take Screenshot

TestCase3
   [Documentation]    Compulsively add 6 shirts to your cart.
    Sleep             10s
   Click Button     (//button[contains(text(),'Add to cart')])[1]
   Click Button     (//button[contains(text(),'Add to cart')])[2]
   Click Button     (//button[contains(text(),'Add to cart')])[3]
   Click Button     (//button[contains(text(),'Add to cart')])[4]
   Scroll Element Into View    //p[contains(text(),'Ringer Hall Pass')]
   Click Button     (//button[contains(text(),'Add to cart')])[5]
   Click Button     (//button[contains(text(),'Add to cart')])[6]
   Take Screenshot
TestCase4
   [Documentation]    Come back to your senses and delete 4 shirts from your cart.
   Click Button    //div[@class='sc-hGPBjI WAKGC']/div[1]/button[@class='sc-bkkeKt oyKqL']
   Sleep             5s
   Click Button    //div[@class='sc-hGPBjI WAKGC']/div[2]/button[@class='sc-bkkeKt oyKqL']
   Sleep             5s
   Click Button    //div[@class='sc-hGPBjI WAKGC']/div[3]/button[@class='sc-bkkeKt oyKqL']
   Sleep             5s
   Click Button    //div[@class='sc-hGPBjI WAKGC']/div[4]/button[@class='sc-bkkeKt oyKqL']
   Take Screenshot

TestCase5
   [Documentation]    Come back to your senses and delete 4 shirts from your cart.
   Click Button    //button[contains(text(),'Checkout')]
   Take Screenshot
   sleep           50s
    
