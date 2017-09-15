*** Settings ***

Library  Selenium2Library


*** Variables ***
${FIRSTNAME} =  Sampath
${LASTNAME} =   Sunny
${EMAILADDRESS} =  speicherfashions@gmail.com
${PASSWORD} =  Work2win$$$
${DAY} =  18
${MONTH} =  11
${YEAR} =  1992
${FBPOSTEMAILADDRESS} =  testerno1809@gmail.com

*** Keywords ***

Load

    Go to  ${URL}

Verify Page Loaded

    wait until page contains  Facebook

Provide Required Details for Registration

    Enter the First Name
    Enter the Last Name
    Enter the Email Address
    Re-Enter the Email Address
    Enter the Password
    Select the date of Birth
    Select the Gender

Create the Account

    click button  //*[@id="u_0_x"]
    sleep  5s

Enter the First Name

    input text  //*[@id="u_0_f"]  ${FIRSTNAME}

Enter the Last Name

    input text  //*[@id="u_0_h"]  ${LASTNAME}

Enter the Email Address

    input text  //*[@id="u_0_k"]  ${EMAILADDRESS}

Re-Enter the Email Address

    input text  //*[@id="u_0_n"]  ${EMAILADDRESS}

Enter the Password

    input text  //*[@id="u_0_r"]  ${PASSWORD}
    sleep   5s

Select the date of Birth

    Select the Day
    Select the Month
    Select the Year

Select the Gender

    click element  //*[@id="u_0_v"]/span[2]/label
    sleep   3s

Select the Day

    select from list by value  //*[@id="day"]  ${DAY}

Select the Month

    select from list by value  //*[@id="month"]  ${MONTH}

Select the Year

    select from list by value  //*[@id="year"]  ${YEAR}

Login

    Enter the login email address
    Enter the valid login password
    Click the login button

Enter the Login Email Address

    Input Text    //*[@id='email']    ${FBPOSTEMAILADDRESS}

Enter the Valid Login Password

    Input Text    //*[@id='pass']    ${PASSWORD}

Click the Login Button

    Click Button    //*[@id="u_0_2"]
    sleep   3s


















