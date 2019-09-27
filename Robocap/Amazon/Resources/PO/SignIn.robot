*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${SIGNIN_HEADER}    Sign-In
${EMAIL_FIELD}    xxxx
${PASSWORD_FIELD}    xxxx


*** Keywords ***
Verify sign-in page loaded
    Page Should Contain    ${SIGNIN_HEADER}
    
Login with valid credentials
    [Arguments]    ${Email}    ${Password}
    Fill email field
    Fill password field
    Click submit button
    
Fill email field
        [Arguments]    ${Email}
        
Fill password field
        [Arguments]    ${Password}
        
Click submit button
