*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Result
    Input Text       id : gh-ac    mobile
    #Click Button     //input[@type='submit']
    #Click Button     xpath=//input[@type='submit']
    #Click Button     xpath = //input[@type='submit']
    #Click Button     xpath : //input[@type='submit']
    #Click Button     id : gh-btn
    Click Button     css : #gh-btn
    ${ActuallyText}   Get Text    (//span[@class='BOLD'])[15]
    Should Be Equal  ${ActuallyText}  mobile
    Page Should Contain  results for mobile

 Verify Condition Result
    Click Element     xpath=(//span[@class='btn__cell'])[2]
    Click Element    xpath=(//a[@class='fake-menu-button__item'])[5]

Verify Display New Button
   Element Should Be Visible    xpath=(//a[@class='srp-carousel-list__item-link'])[1]
