*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demostrate Weblocator Robot FW
    [Documentation]  This is a test case
     Open Browser    http://www.ebay.com  chrome
     Maximize Browser Window
     Click Link   Partial Link:Seller Information Center
     Sleep  4s
     Close Browser
