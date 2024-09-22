*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary
Resource   ../../Resources/CommonFunctionality.robot
Resource   ../../Resources/eBay_UserDefinedKeyWords.robot
Resource   ../../Resources/PageObjects/HeaderPage.robot
Resource   ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start Page of eBay
Test Teardown  CommonFunctionality.Finish Test

*** Variables ***

*** Test Cases ***
Verfy basic searh functionality for eBay1
    [Documentation]  This test is verifies the basic search
    [Tags]           Functional

    HeaderPage.Input Search Text and Click Search   mobile
    SearchResultsPage.Verify Search Result  mobile

Verfy basic searh functionality for eBay2
    [Documentation]  This test is verifies the basic search
    [Tags]           Functional

    HeaderPage.Input Search Text and Click Search  miniş
    SearchResultsPage.Verify Search Result  miniş

Verify Advanced Search Functionality
    [Documentation]  This test is verifies the advanced search
    [Tags]           Functional

    HeaderPage.Click on Advanced Search Link





