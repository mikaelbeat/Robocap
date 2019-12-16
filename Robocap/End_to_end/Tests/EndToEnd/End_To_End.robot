*** Settings ***
Documentation  This is my end to end suite
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${FRONT_OFFICE_URL} =  http://www.robotframeworktutorial.com/front-office
${BACK_OFFICE_URL} =  http://www.robotframeworktutorial.com/back-office

*** Test Cases ***
Should be able to access to both sites
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page
