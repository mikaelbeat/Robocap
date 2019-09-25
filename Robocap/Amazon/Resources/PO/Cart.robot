*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Verify product added to cart
    Wait Until Page Contains    Added to Cart    
    
Proceed to checkout
    Click Link    //a[contains(text(),'Proceed to checkout (1 item)')]    
