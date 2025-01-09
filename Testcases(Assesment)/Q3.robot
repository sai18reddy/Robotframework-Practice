*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.saucedemo.com/
${Browser}   chrome
*** Test Cases ***
Test using chrome browser:
     open browser   https://www.saucedemo.com/      chrome
     maximize browser window
     ${title}=  get title
     Log to console  ${title} using chrome browser
Test using edge browser:
     open browser   https://www.saucedemo.com/      edge
     maximize browser window
     ${title}=  get title
     Log to console  ${title} using chrome browser
Test2 using chrome browser:
     open browser    ${url}  ${Browser}
     maximize browser window
     maximize browser window
     ${title}=  get title
     Log to console  ${title} using chrome browser
*** Keywords ***
