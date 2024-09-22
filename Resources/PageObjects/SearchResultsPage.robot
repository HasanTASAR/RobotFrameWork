*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/PageObjects/HeaderPage.robot
*** Variables ***
${page_contain}     results for

*** Keywords ***
Verify Search Result
    [Arguments]  ${search_text}
    Page Should Contain   ${page_contain}  ${search_text}

Select Pruduct Condition
    Click Element     xpath=(//span[@class='btn__cell'])[2]
    Click Element    xpath=(//a[@class='fake-menu-button__item'])[5]
