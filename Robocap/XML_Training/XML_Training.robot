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
  Veriry elements

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


Veriry elements
  ${root}  Parse Xml  ${data_folder}/Random_XML.xml
  Should Be Equal  ${root.tag}  demo

  ${id}  Get Element  ${root}  id
  Log  ${id.text}
  Should Be Equal  ${id.text}  123456

  ${body}  Get Element  ${root}  body
  Element Text Should Be  ${body}  Don't forget me this weekend!

  Element Attribute Should Be  ${root}  value  1  xpath=id
  Element Attribute Should Be  ${root}  data  Change this?  xpath=superios_data/important_element
  Element Attribute Should Be  ${root}  info  This element tag is going to be changed!  xpath=test_tag


# <demo>
#   <script/>
#   <id value="1">123456</id>
#   <heading>Reminder</heading>
#     <body>Don't forget me this weekend!</body>
#     <footer>
#       <some_data>This is just some random data</some_data>
#       <important_data>This is needed to be changed</important_data>
#     </footer>
#   <superios_data>
#     <important_element data="Change this?"/>
#   </superios_data>
#     <test_tag info="This element tag is going to be changed!"/>
# </demo>
