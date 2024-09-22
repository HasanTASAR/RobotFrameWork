*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Test Case Demostration CheckBox
    [Documentation]  Checkbox
    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  chrome
    Maximize Browser Window
    
    Select Frame    id:iframeResult
    Current Frame Should Contain    JavaScript Alert
    Current Frame Should Not Contain    JavaScript Alert Box
    Unselect Frame
    Frame Should Contain    id:iframeResult    JavaScript Alert
    Close Browser

