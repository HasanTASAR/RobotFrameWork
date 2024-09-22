*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Test Case Demostration CheckBox
    [Documentation]  Checkbox
    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll"]
    Scroll Element Into View    xpath://input[@id='doi0']
    Element Should Be Visible   xpath://input[@id='doi0']
    Page Should Contain Checkbox  xpath://input[@id='doi0']
    Page Should Not Contain Checkbox    xpath://input[@id='doi00']
    Select Checkbox    xpath://input[@id='doi0']
    Capture Page Screenshot
    Sleep    2s
    Unselect Checkbox    xpath://input[@id='doi0']
    Sleep    2s
    Capture Page Screenshot
    Checkbox Should Not Be Selected    xpath://input[@id='doi0']
    Sleep    5s




    Close Browser
