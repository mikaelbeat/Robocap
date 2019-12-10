*** Settings ***
Library    OperatingSystem    


*** Variables ***
${location}    D:\\Git\\github\\Robocap\\Robocap\\Practice\\Check_file_in_folder\\Data\\
${file}    test.txt


*** Test Cases ***
File check test
    Check is file present
    


*** Keywords ***
Check is file present
    log    ${location}
    Wait Until Created    ${location}/${file}    
    File Should Exist    ${location}/${file}    "No file ${file} in given location!"    
    