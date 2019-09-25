*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Verify product page
    Wait Until Page Contains    Back to results  
    
Add to cart
    Click Button    //input[@id='add-to-cart-button']   