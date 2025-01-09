*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Login to the Page:
    Set Selenium implicit wait    10s
    open browser   http://youtube.com       chrome
    maximize browser window
    click element    id:uyu
    close all browsers
    @{list}  create list    sai  prakash  reddy
    FOR  ${i}  IN  @{list}
    Log to Console  ${i}
    END
    Log  This is Log message
    
*** Keywords ***
