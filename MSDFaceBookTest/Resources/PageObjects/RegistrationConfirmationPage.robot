*** Settings ***

Library  Selenium2Library

*** Keywords ***

Verify Page Loaded

    wait until page contains  Confirm your email address
    sleep  20s
    #run keyword if  wait until page contains  Upload
    #click link  //*[@id="blueBarDOMInspector"]/div/div/div/div/div[2]/div/div/a
    #wait until page contains  Confirm your email address
    sleep  2s

Connect to Gmail

    click button  //*[@id="confirm_center"]/div/div[2]/div[4]/div[2]/button
    select window  title=Sign in - Google Accounts