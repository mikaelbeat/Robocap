*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Search for product
    Enter search term
    Submit search
    
Enter search term
    Input Text    id=twotabsearchtextbox    Stravaganza 1

Submit search
    Click Button    //input[@value='Go']
