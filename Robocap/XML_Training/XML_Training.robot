*** Settings ***
Library  XML
Library  OperatingSystem

*** Variables ***
${data_folder} =  Data/
${data_file}  menu.xml


*** Test Cases ***
XML File training
  How to set element text
  How to set element text - Another approach
  How to change element attribute
  How to change element tag

*** Keywords ***
How to set element text
  ${root}  Parse Xml  ${data_folder}/${data_file}
  Log  ${root.tag}
  Should Be Equal  ${root.tag}  breakfast_menu
  ${text}  Get Element Text  ${root[0]}  name
  Log  ${text}
  Set Element Text  ${root[0]}  Cat Waffels  xpath=name
  Save Xml  ${root}  ${data_folder}/Result.xml
  ${result}  Get File  ${data_folder}/Result.xml
  Log  ${result}


How to set element text - Another approach
  ${root}  Parse Xml  ${data_folder}/Random_XML.xml
  Log  ${root.tag}
  ${text}  Get Element Text  ${root}  xpath=footer/important_data
  Log  ${text}
  Set Element Text  ${root}  Changed!!!  xpath=footer/important_data
  Save Xml  ${root}  ${data_folder}/Result2.xml
  ${result}  Get File  ${data_folder}/Result2.xml
  Log  ${result}


How to change element attribute
  ${root}  Parse Xml  ${data_folder}/Random_XML.xml
  ${value}  Get Element Attribute  ${root}  data  xpath=superios_data/important_element
  Log  ${value}
  Set Element Attribute  ${root}  data  !!!*CHANGED*!!!  xpath=superios_data/important_element
  Save Xml  ${root}  ${data_folder}/Result3.xml
  ${result}  Get File  ${data_folder}/Result3.xml
  Log  ${result}


How to change element tag
  ${root}  Parse Xml  ${data_folder}/Random_XML.xml
  Set Element Tag  ${root}  DEMO  xpath=test_tag
  Save Xml  ${root}  ${data_folder}/Result4.xml
  ${result}  Get File  ${data_folder}/Result4.xml
