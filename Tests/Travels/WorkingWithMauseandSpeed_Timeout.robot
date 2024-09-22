*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case Demostration Mouse
    [Documentation]  Mouse
    ${default_selenium_timeout}   Get Selenium Timeout
    ${default_selenium_speed}   Get Selenium Speed
    Set Selenium Speed    2s

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
