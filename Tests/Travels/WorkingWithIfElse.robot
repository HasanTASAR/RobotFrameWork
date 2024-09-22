*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case If Else
    [Documentation]  if else
    Open Browser   https://www.saucedemo.com/   chrome
    Maximize Browser Window
    
    Input Text    id:user-name   standard_user
    Input Text    id:password    secret_sauce
    Click Button  id:login-button

    ${items_on_page}  Get Element Count  xpath://*[@class="inventory_list"]/div
    Run Keyword IF  ${items_on_page}==10    Test Keyword 1
    ...  ELIF  ${items_on_page}<10 and ELIF  ${items_on_page}>6  Test Keyword 2
   ...  ELSE  Test Keyword 3


*** Keywords ***
Test Keyword 1
    Log To Console  Executed Keyword1: Found items are as expected.
    Close Browser

 Test Keyword 2
     Log To Console  Executed Keyword2: Found items are less than expected
    Close Browser

 Test Keyword 3
    Log To Console  Executed Keyword3: Expection
    Close Browser