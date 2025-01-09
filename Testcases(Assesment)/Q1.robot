*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/Res2.robot
Library   DataDriver  ../Resources/Testdata1.xlsx   Sheetname = Sheet1
Suite Setup     opening_browser
Suite Teardown  closing_browser
Test Template   Login to the application

*** Variables ***
${url}   https://www.saucedemo.com/v1
${browser}   edge
*** Test Cases ***
Login with Excel using ${username} and ${password}
*** Keywords ***
Login to the application
    [Arguments]  ${username}   ${password}
    Enter input data   ${username}   ${password}
    clicking button
    sleep  3
    navigating_back



