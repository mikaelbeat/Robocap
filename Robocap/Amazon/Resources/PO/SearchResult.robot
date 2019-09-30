*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${SEARCH_RESULT_TEXT}    results for
${SEARCH_RESULT_ITEM}    //span[@class='a-size-medium a-color-base a-text-normal'][contains(text(),'${SEARCH_TERM}')]


*** Keywords ***
Verify seach completed
    Wait Until Page Contains    ${SEARCH_RESULT_TEXT}
    
Click product link
    Click Element    ${SEARCH_RESULT_ITEM}
    
