*** Settings ***
Library  XML

*** Variables ***
${data_folder} =  Data/
${data_file}  menu.xml


*** Test Cases ***
XML File training
  ${root}  Parse Xml    ${data_folder}/${data_file}
  Log    ${root.tag}
  Should Be Equal    ${root.tag}    breakfast_menu
  ${text}  Get Element Text  ${root}  Body
  Log  ${text}
  # ${edited_xml}  Set Elements Text  ${root}  Kissa  food[0]/description
  # Save Xml    ${edited_xml}    ${data_folder}/Result.xml
