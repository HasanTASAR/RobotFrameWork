*** Settings ***
Library  SeleniumLibrary
Variables  ../../Resources/PageObjects/WebElements.py

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text       ${HomePage_search_box}   ${search_text}
    Click Button     ${HomePage_search_button}

Click on Advanced Search Link
    Click Element    ${HomePage_advanced_button}
