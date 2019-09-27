*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${LANDING_PAGE_LINK}    Your Amazon.com

*** Keywords ***
Load
    Go To    ${START_URL}
    
Verify page is loaded
    Wait Until Page Contains    ${LANDING_PAGE_LINK}    