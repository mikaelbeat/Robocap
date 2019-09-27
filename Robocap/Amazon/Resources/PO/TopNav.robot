*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${TOPNAV_SEARCHFIELD}    id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON}    //input[@value='Go']    


*** Keywords ***
Search for product
    Enter search term
    Submit search
    
Enter search term
    Input Text    ${TOPNAV_SEARCHFIELD}    ${SEARCH_TERM}

Submit search
    Click Button    ${TOPNAV_SEARCH_BUTTON}
