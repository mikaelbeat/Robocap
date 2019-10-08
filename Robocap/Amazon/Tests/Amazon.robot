# robot -d Results Tests/Amazon.robot

# Logfiles with timestamps
# robot -d Results --timestampoutputs Tests/Amazon.robot

*** Settings ***
Documentation    This is some basic about the test suite
  
Resource    ../Resources/AmazonUI.robot
Resource    ../Resources/Common.robot

Suite Setup    Insert testing data
Test Setup    Begin web test
Test Teardown    End web test
Suite Teardown    Remove testing data


*** Variables ***
${BROWSER}    chrome
${START_URL}    http://www.amazon.com
${SEARCH_TERM}    Mortal Kombat 11 - PlayStation 4
${LOGIN_EMAIL}    email
${LOGIN_PASSWORD}    password


*** Test Cases ***
User must sign in to checkout
    [Documentation]    This is some basic information about the test
    [Tags]    Smoke
    AmazonUI.Search for products
    AmazonUI.Select product from search result
    AmazonUI.Add product to cart
    AmazonUI.Begin checkout
    AmazonUI.Login to Amazon    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}