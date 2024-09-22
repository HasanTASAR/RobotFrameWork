*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case Demostration implicit wait
    [Documentation]  implicit wait
    ${default_implicitWait}  =  Get Selenium Implicit Wait

    Set Selenium Implicit Wait    20s
    ${custom_implicitWait}  =  Get Selenium Implicit Wait

    Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll"]

    Input Text       xpath://*[@name='email']    hasantasar@hotmail.com

    Scroll Element Into View   xpath://*[@id="field24"]/div/input

    Mouse Down   xpath://*[@name='phone_work']

    Mouse Up    xpath://*[@name='phone_work']

    Scroll Element Into View   xpath:(//a[@rel='noopener'])[7]

    Mouse Down On Link    xpath:(//a[@rel='noopener'])[7]


    Mouse Over     xpath:(//*[text()='Deployment Options'])[1]

    Mouse Out     xpath:(//*[text()='Deployment Options'])[1]


    Mouse Down On Image    xpath:(//*[@width='194'])[2]

    Close Browser
