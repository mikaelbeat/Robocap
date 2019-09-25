## robot -d Results Tests/Amazon.robot

*** Settings ***
Documentation    This is some basic about the test suite
  
Resource    ../Resources/AmazonUI.robot
Resource    ../Resources/Common.robot

Suite Setup    Insert testing data
Test Setup    Begin web test
Test Teardown    End web test
Suite Teardown    Remove testing data


*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic information about the test
    [Tags]    Smoke
    AmazonUI.Search for products
    AmazonUI.Select product from search result
    AmazonUI.Add product to cart
    AmazonUI.Begin checkout