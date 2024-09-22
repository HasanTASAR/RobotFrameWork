*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case Demostration Alert
    [Documentation]  Alert
     Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert  chrome
     Maximize Browser Window
     Select Frame  id:iframeResult
     Click Button  xpath://body/button
     Handle Alert  ACCEPT  timeout=5 s

     Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
     Select Frame  id:iframeResult
     Click Button  xpath://button[@onclick='myFunction()']
     ${message1}=  Handle Alert  action=ACCEPT   timeout=2s

     Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
     Select Frame  id:iframeResult
     Click Button  xpath://button[@onclick='myFunction()']
     ${message2}=  Handle Alert  DISMISS   timeout=2s




    Go To  https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
    Select Frame  id:iframeResult
    Click Button  xpath://button[@onclick='myFunction()']
    Sleep    2s
    Alert Should Be Present  text=Hello How are you?  action=ACCEPT

    Go To  https://www.sugarcrm.com/au/request-demo/
    Click Element    xpath://*[@id='CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll']
    Alert Should Not Be Present  action=ACCEPT  timeout=2s

    Close Browser







