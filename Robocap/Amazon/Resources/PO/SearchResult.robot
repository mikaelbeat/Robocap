*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${SEARCH_RESULT_TEXT}    results for
${SEARCH_RESULT_ITEM}    //span[contains(text(),'APOSIMZ, volume 1')]


*** Keywords ***
Verify seach completed
    Wait Until Page Contains    ${SEARCH_RESULT_TEXT}
    
Click product link
    Click Element    ${SEARCH_RESULT_ITEM}
    
