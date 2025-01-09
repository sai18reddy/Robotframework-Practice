*** Settings ***
Library  SeleniumLibrary
Test Setup  Set selenium timeout   1

*** Variables ***
${speed}  get Selenium Timeout
*** Test Cases ***
checkboxes Testing:

    open browser    https://ironspider.ca/forms/checkradio.htm#radio    chrome
    maximize browser window
    select check box    xpath://*[@id="Content"]/div[1]/blockquote[1]/form/input[1]
    select check box    xpath://*[@id="Content"]/div[1]/blockquote[1]/form/input[3]
    unselect check box   xpath://*[@id="Content"]/div[1]/blockquote[1]/form/input[1]
    select check box  xpath://*[@id="Content"]/div[1]/blockquote[1]/form/input[2]
    sleep  3
    LOg to console  ${speed}
    ${link}=  get location
    Log to Console  ${link}
    ${speed1}=  get Selenium timeout
    Log to console  ${speed1}
    ${sel_speed}=  get Selenium speed
    Log to Console      ${sel_speed}

    Scroll element into view    xpath://*[@id="Content"]/div[1]/blockquote[2]/form/input[3]
    Set selenium implicit wait  10s

    click element    xpath://*[@id="Content"]/div[1]/blockquote[2]/form/input[2]

    click element   xpath://*[@id="Content"]/div[1]/blockquote[2]/form/input[1]
Testing Alerts:
    go to   https://the-internet.herokuapp.com/javascript_alerts
    click element   xpath://*[@id="content"]/div/ul/li[1]/button
    handle alert  accept
    ${result1}=  get text    xpath://*[@id="result"]
    Log to console  ${result1}
    click element   xpath://*[@id="content"]/div/ul/li[2]/button
    handle alert  dismiss
    ${result2}=  get text    xpath://*[@id="result"]
    Log to Console   ${result2}
    click element  xpath://*[@id="content"]/div/ul/li[3]/button
    input text into alert    Hi
    ${result3}=  get text    xpath://*[@id="result"]
    Log to Console    ${result3}
Testing Page Scrolling:
      [Tags]  Scroll
       open browser  https://www.wikipedia.org/  headless chrome
       go to   https://www.wikipedia.org/
       maximize browser window
       Execute javascript   window.scrollTo(0,50)
       input text  id:searchInput   Baahubali
       click element  xpath://*[@id="search-form"]/fieldset/button/i
       ${count}=  get element count    xpath://*[@id="firstHeading"]/span
       Log to Console   ${count}
       sleep  2
       click link   xpath://*[@id="mw-content-text"]/div[1]/ul/li/ul/li[2]/i/a
       scroll element into view   xpath://*[@id="toc-International"]/a/div/span[2]
       click element    xpath://*[@id="toc-India"]/a/div/span[2]
       ${high_collection}=  get text   xpath://*[@id="mw-content-text"]/div[1]/table[3]/tbody/tr[2]/td[2]
       Log to Console  ${high_collection}
       table row should contain  xpath://*[@id="mw-content-text"]/div[1]/table[3]   2   India
       table column should contain  xpath://*[@id="mw-content-text"]/div[1]/table[3]  2   ₹1,429.83 crore[190]
       table cell should contain  xpath://*[@id="mw-content-text"]/div[1]/table[3]   2   1   India

*** Keywords ***
