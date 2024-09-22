*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case Demostration List
    [Documentation]  List
     Open Browser  https://www.sugarcrm.com/au/request-demo/  chrome
     Maximize Browser Window
     Click Element    xpath://*[@id='CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll']
     Input Text       xpath://*[@name='email']    hasantasar@hotmail.com
     Sleep    2s
     Scroll Element Into View    xpath://*[@id='field26']/div/select
     Sleep    5s

    Page Should Contain List  xpath://*[@id='field26']/div/select
    Page Should Not Contain List    xpath://*[@id='field26']/div/selectt
    @{AllItems}  Get List Items   xpath://*[@id='field26']/div/select
    ${ListLabel}  Get Selected List Label   xpath://*[@id='field26']/div/select
    ${ListValue}  Get Selected List Value   xpath://*[@id='field26']/div/select

    List Selection Should Be    xpath://*[@id='field26']/div/select  Company Size*

    Select From List By Index   xpath://*[@id='field26']/div/select  1
    ${LLabel1}  Get Selected List Label    xpath://*[@id='field26']/div/select
    Sleep    2s

    Select From List By Label   xpath://*[@id='field26']/div/select  51 - 100 employees
    ${LLabel1}  Get Selected List Label    xpath://*[@id='field26']/div/select

     Select From List By Value   xpath://*[@id='field26']/div/select  level5
     ${LLabel1}  Get Selected List Label    xpath://*[@id='field26']/div/select

     #Multiselect List
     Go To    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
     Select Frame    id:iframeResult
     Select All From List    xpath://*[@id='cars']

     @{ListLabels}  Get Selected List Labels    xpath://*[@id='cars']
     Unselect From List By Value    xpath://*[@id='cars']  audi
     Unselect From List By Index    xpath://*[@id='cars']  1
     Unselect From List By Label    xpath://*[@id='cars']  Volvo

      @{ListValues}  Get Selected List Values    xpath://*[@id='cars']
      Unselect All From List    xpath://*[@id='cars']
      List Should Have No Selections    xpath://*[@id='cars']


    Close Browser
