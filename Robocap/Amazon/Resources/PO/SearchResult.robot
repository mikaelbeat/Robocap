*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Verify seach completed
    Wait Until Page Contains    results for "Stravaganza 1" 
    
Click product link
    Click Element    //span[contains(text(),'Stravaganza Volume 1 (Stravaganza, The Queen in th')] 