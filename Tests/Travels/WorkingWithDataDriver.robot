*** Settings ***
Library  SeleniumLibrary
Library  DataDriver  data.xlxs  sheet_name=Sayfa1
Resource
Suite Setup  Open Browser
Suite Teardown  Close Browser
Test Template   Read All Data



*** Test Cases ***
Verfy all data from Excel  ${kelime}  ${ornek}


*** Keywords ***
Read All Data
    [Arguments]  ${kelime}  ${ornek}
    Log To Console  ${kelime} : ${ornek}

