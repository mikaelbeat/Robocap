*** Settings ***
Library  XML

*** Variables ***
${data_folder} =  Data/
${data_file}  menu.xml


*** Test Cases ***
Read XML file test
  Parse

*** Keywords ***
Parse
  ${parsed_file}  Parse Xml    ${data_folder}/${data_file}
  Log    ${parsed_file}
