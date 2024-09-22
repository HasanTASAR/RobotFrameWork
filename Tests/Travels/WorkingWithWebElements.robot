*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case Demostration Web Elements
    [Documentation]  Web Elements
    Open Browser  http://www.google.com  chrome  alias=ChromeRCV
    Maximize Browser Window
    Sleep    4s

    ${attrb}  Get Element Attribute   xpath:(//input[@value="Google'da Ara"])[2]    class

    ${count}  Get Element Count   xpath:(//input[@value="Google'da Ara"])[2]

    ${width}  ${height}   Get Element Size   xpath:(//input[@value="Google'da Ara"])[2]
    
    Get WebElements    xpath:(//input[@value="Google'da Ara"])[2]

    @{webelements}  Get WebElements    xpath:(//input[@value="Google'da Ara"])[2]
    
    Capture Element Screenshot     xpath://textarea[@class='gLFyf']

    Assign Id To Element  name:btnK   RCVid
    Page Should Contain Element   RCVid
    
    Element Should Be Focused    xpath://textarea[@class='gLFyf']
    Element Should Be Visible    xpath://textarea[@class='gLFyf']
    
    Input Text    //textarea[@class='gLFyf']    RCVAcademy
    
    Clear Element Text    //textarea[@class='gLFyf']
    
    Cover Element     xpath:(//input[@value="Google'da Ara"])[2]
    
    Element Attribute Value Should Be    name:btnK    value   Google'da Ara
    
    Element Should Be Enabled    name:btnK
    Element Should Not Be Visible    name:btnKgf
    
    Element Should Contain    xpath://span[@class='ktLKi']    İklimle ilgili çalışmalarımızın üçüncü on yılı
    Element Should Not Contain   xpath://span[@class='ktLKi']   Google'da Ara

    Element Text Should Be   xpath://span[@class='ktLKi']   İklimle ilgili çalışmalarımızın üçüncü on yılı
    Element Text Should Not Be   xpath://span[@class='ktLKi']    Google'da Ara

    Close Browser




