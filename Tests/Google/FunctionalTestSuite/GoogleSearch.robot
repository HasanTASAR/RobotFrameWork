*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is Simple Test
    [Documentation]  Google Test
    [Tags]   regression
    Open Browser  http://www.google.com  chrome
    Close Browser

*** Keywords ***