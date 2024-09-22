*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${blank}

*** Test Cases ***
Verify Login Fails - Wrong Username

    Open Browser   https://www.saucedemo.com/   chrome
    Maximize Browser Window
    Input Text    id:user-name   standard_userr
    Input Text    id:password    secret_sauce
    Click Button  id:login-button
    Sleep    2s
    Element Should Contain    xpath://*[@id="login_button_container"]//h3    Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login Fails - LockedOut user
     Open Browser   https://www.saucedemo.com/   chrome
     Maximize Browser Window
     Input Text    id:user-name   locked_out_user
     Input Text    id:password    secret_sauce
     Click Button  id:login-button
     Sleep    2s
     Element Should Contain    xpath://*[@id="login_button_container"]//h3    Epic sadface: Sorry, this user has been locked out.
     Close Browser

Verify Login Fails - Blank Username and Password
     Open Browser   https://www.saucedemo.com/   chrome
     Maximize Browser Window
     Input Text    id:user-name   ${blank}
     Input Text    id:password    ${blank}
     Click Button  id:login-button
     Sleep    2s
     Element Should Contain    xpath://*[@id="login_button_container"]//h3    Epic sadface: Username is required
     Close Browser

