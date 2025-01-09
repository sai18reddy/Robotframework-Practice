*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
*** Test Cases ***
Run Keyword If Example
    open browser   https://www.saucedemo.com/    chrome
    maximize browser window
    ${Title}=  get title
    Log to Console   ${Title}
    ${STATUS}=    Run Keyword and Return status   Title Should be   Swag Lab
    Log to Console   ${STATUS}

    Run Keyword If    ${STATUS} == ${FALSE}  Capture Page Screenshot    C:/Users/saiprakashreddy.s/Automation/RPA/Screenshots/${Title}.png








*** Keywords ***


