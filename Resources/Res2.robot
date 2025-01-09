*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
opening_browser
   open browser  ${url}   ${browser}
Enter input data
     [Arguments]  ${username}  ${password}
     input text   id:user-name    ${username}
     input text   id:password     ${password}
clicking_button
     click button    id:login-button
     ${title}=  get title
     Log to Console  ${title}
handling_alert
    handle alert  dismiss
navigating_back
     go back


closing_browser
     close browser