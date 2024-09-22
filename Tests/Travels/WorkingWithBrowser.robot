*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.google.com
${browser}  chrome

*** Test Cases ***
TC to demostrate WebBrowser
    [Documentation]  This is a test case WebBrowser
    Open Browser  http://www.google.com   chrome  alias=ChromeRCV
    Maximize Browser Window
    Open Browser  about:blank  ff  alias=RCVFF
    @{alias}  Get Browser Aliases
    Log    ${alias}[1]
    @{browser_ID}  Get Browser Ids
    Log    ${browser_ID}[1]
    Switch Browser    1
    Sleep  4s
    Input Text   //*[@id='tsf']/div[2]/div[1]/div[1]/div/div[2]/input    RCVAcademy
    Sleep  4s
    Switch Browser      ${browser_ID}[1]
    Go To    http://www.salesforce.com
    Close All Browsers