*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${PRODUCT_BACK_TO_RESULTS_LINK}    Back to results
${PRODUCT_ADD_TO_CART_BUTTON}    //input[@id='add-to-cart-button']    


*** Keywords ***
Verify product page
    Wait Until Page Contains    ${PRODUCT_BACK_TO_RESULTS_LINK}  
    
Add to cart
    Click Button    ${PRODUCT_ADD_TO_CART_BUTTON}  