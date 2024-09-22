*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case For Loop
    [Documentation]  For Loop
    Open Browser   https://www.google.com/   chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    2s
    
    Input Text    name:q    RCV Academy
    Click Button   xpath:(//*[@name='btnK'])[1]


    @{resuls_Search}  Get WebElements    xpath=//*[@id='rso']/div

    FOR    ${element}    IN    @{resuls_Search}
        ${text}=  Get Text   ${element}

    END

    Close Browser

