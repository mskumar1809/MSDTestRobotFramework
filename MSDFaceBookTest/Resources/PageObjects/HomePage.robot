*** Settings ***

Library  Selenium2Library

*** Keywords ***

Verify Page Loaded

    wait until page contains  Sampath


Navigate to Timeline Page

    Wait Until Keyword Succeeds    20    2    Click Link    xpath=//*[@id='blueBarDOMInspector']//div/a[contains(text(),'Home')]
    sleep  4s
    Wait Until Keyword Succeeds    20    2    Click Element    xpath=//*[@id='blueBarDOMInspector']//div[1]/div[1]/div/a[@title='Profile']//span[contains(text(),'Sampath')]
    sleep  4s

