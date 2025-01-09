*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Login to the Page:
    open browser      https://www.apple.com/   chrome
    maximize browser window
    Wait Until Element is visible   xpath://*[@id="globalnav-list"]/li[2]/div/div/div[2]/ul/li[1]/a/span[1]
    click element   xpath://*[@id="globalnav-list"]/li[2]/div/div/div[2]/ul/li[1]/a/span[1]
    Title Should be   Mac - Apple
    ${title}=  get title
    LOg to Console   ${title}


*** Keywords ***

