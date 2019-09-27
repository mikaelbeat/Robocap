*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${CART_CONFIRMATION_TEXT}    Added to Cart
${CART_PROCEED_TO_CHECKOUT_BUTTON}    //a[contains(text(),'Proceed to checkout (1 item)')]


*** Keywords ***
Verify product added to cart
    Wait Until Page Contains    ${CART_CONFIRMATION_TEXT}    
    
Proceed to checkout
    Click Link    ${CART_PROCEED_TO_CHECKOUT_BUTTON}  
