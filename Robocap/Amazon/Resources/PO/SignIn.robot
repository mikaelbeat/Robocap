*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${SIGNIN_HEADER}    Sign-In
${EMAIL_FIELD}    //input[@id='ap_email']
${PASSWORD_FIELD}    //input[@id='ap_email']


*** Keywords ***
Verify sign-in page loaded
    Page Should Contain    ${SIGNIN_HEADER}
    
Login with valid credentials
    [Arguments]    ${email}    ${password}
    Fill email field    ${email}
    Fill password field    ${password}
    Click submit button    

Fill email field
        [Arguments]    ${email}
        Input Text    ${EMAIL_FIELD}    ${email}
        
Fill password field
        [Arguments]    ${password}
        Input Text    ${PASSWORD_FIELD}    ${password}
        
Click submit button
    Log    Clicked submit button    