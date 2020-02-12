*** Settings ***
Library  OperatingSystem
Library  WhiteLibrary


*** Variables ***
${data}  This is just some test data!
${file_name}  WhiteLibrary_Demo.txt


*** Test Cases ***
Notepad demo
  Automation


*** Keywords ***
Automation
  Launch Application  notepad.exe
  Attach Window  Untitled - Notepad
  Input Text To Textbox  id:15  ${data}
  Click Menu Button  text:Edit
  Click Menu Button  text:Select All
  Click Menu Button  text:File
  Click Menu Button  text:Save
  Input Text To Textbox  id:1001  ${file_name}
  Click Button  id:1
