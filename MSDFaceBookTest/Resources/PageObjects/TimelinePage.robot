*** Settings ***

Library  Selenium2Library

*** Variables ***

${STATUSMESSAGE} =  GOOD MORNING

*** Keywords ***

Write the post

    Wait Until Keyword Succeeds    20    2    Click Element    xpath=//div[@class='_1mf _1mj']
    sleep  4s
    Wait Until Keyword Succeeds    20    2    Input Text    xpath=//*[@id='timeline_react_composer_container']//div[@role='textbox']  ${STATUSMESSAGE}
    sleep  4s

Set the Visibility of the Post

    Click Element    xpath=//*[@id='timeline_react_composer_container']//div/a/span[3]/i
    sleep    3s
    #click element  xpath=//*[@id='globalContainer']//div/ul/li[3]/a/span/span[contains(text(),'Friends')]
    Click Element    xpath=//*[@id='timeline_react_composer_container']//div/a/span[3]/i
    sleep    3s

Publish Post

    Wait Until Keyword Succeeds    20    2    Click Element    xpath=.//button[@data-testid='react-composer-post-button']
    sleep  5s
#Post xpath //*[@id='timeline_composer_container']/div[2]/div/div/div/div/div/div/a[@data-testid='post_chevron_button']
Delete the post

    Click on elipses button
    Select Delete Link
    Confirm Delete

Click on elipses button

    Wait Until Keyword Succeeds    20    2    Click Element    xpath=//*[@id='timeline_composer_container']/div[2]/div/div/div/div/div/div/a[@data-testid='post_chevron_button']
    sleep  3s

Select Delete Link

    Click Link    Delete
    sleep  5s

Confirm Delete

    Click Button    xpath=.//button[@type='submit'][contains(text(),'Delete Post')]
    sleep  5s

Logout

    Click on Navigation Label
    Select Log out

Click on Navigation Label

    Wait Until Keyword Succeeds    20    2    Click Element    userNavigationLabel
    sleep    3

Select Log out

    Wait Until Keyword Succeeds    20    2    Click Link    Log out
