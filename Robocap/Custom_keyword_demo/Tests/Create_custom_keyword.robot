*** Settings ***
Library    ../Libraries/Custom_library.py      


*** Keywords ***
Run test to print
    Print Something
    
Run test to return value
    Return value    Cat
    
Run test to calculate values
    Calculate values    5    6



*** Variables ***



*** Test Cases ***
Custom keyword demo to print something
    Run test to print
    
Custom keyword demo to return value
    Run test to return value
    
Custom keyword demo to calculate values
    Run test to calculate values