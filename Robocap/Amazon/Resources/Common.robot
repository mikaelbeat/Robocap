*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Insert testing data
    Log    Adding testing data    

Begin web test
    Open Browser    about:blank    ${BROWSER}

End web test  
    Close Browser
    
Remove testing data
    Log    Removing testing data    