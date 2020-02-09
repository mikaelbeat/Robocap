*** Settings ***
Library  XML
Library  OperatingSystem

*** Variables ***
${data_folder} =  Data/
${data_file}  menu.xml


*** Test Cases ***
XML File training
  Demo1
  Demo2

*** Keywords ***
Demo1
  ${root}  Parse Xml    ${data_folder}/${data_file}
  Log    ${root.tag}
  Should Be Equal    ${root.tag}    breakfast_menu
  ${text}  Get Element Text  ${root[0]}  name
  Log  ${text}
  Set Element Text  ${root[0]}  Cat Waffels  xpath=name
  Save Xml  ${root}  ${data_folder}/Result.xml
  ${result}  Get File    ${data_folder}/Result.xml
  Log  ${result}


Demo2
  ${root}  Parse Xml    ${data_folder}/Random_XML.xml
  Log    ${root.tag}
  ${text}  Get Element Text  ${root}  footer[1]
  Log  ${text}
