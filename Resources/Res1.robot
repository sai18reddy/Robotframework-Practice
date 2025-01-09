*** Settings ***
Library     SeleniumLibrary

*** Variables ***
*** Keywords ***
opening_browser
    [Arguments]  ${url}     ${browser}
    open browser      ${url}     ${browser}
    maximize browser window
checking the element1
    element should be visible   id:user-name
    element should be enabled   id:user-name
Enter user_name
    [Arguments]  ${user_name}
    input text    id:user-name    ${user_name}
    clear element text   id:user-name
    sleep  3
    input text    id:user-name    standard_user
checking the element2
    element should be visible   id:password
    element should be enabled   id:password
Enter password
    [Arguments]  ${password}
    input text    id:password   ${password}
Login_into_app
    click button    id:login-button
    element should be visible   xpath://*[@id="inventory_filter_container"]/div     Chrome
    maximize browser window

