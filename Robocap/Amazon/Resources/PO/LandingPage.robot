*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
Load
    Go To    http://www.amazon.com
    
Verify page is loaded
    Wait Until Page Contains    Your Amazon.com    