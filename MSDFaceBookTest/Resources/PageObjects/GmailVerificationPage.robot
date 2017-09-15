*** Settings ***

Library  Selenium2Library

*** Variables ***

${GMAILEMAILADDRESS} =  arjun1ly4u@gmail.com
${GMAILPASSWORD} =  Work2win$

*** Keywords ***

Verify Page Loaded

    wait until page contains  Google
    sleep  2s

Authenticate to Gmail

    Enter the Gmail Email Address
    Provide the corresponding password
    Confirm the Account

Enter the Gmail Email Address

     input text  //*[@id="identifierId"]  ${GMAILEMAILADDRESS}
     press key  //*[@id="identifierId"]  \\13
     sleep  3s

Provide the corresponding password

    input text  //*[@id="password"]/div[1]/div/div[1]/input  ${GMAILPASSWORD}
    press key  //*[@id="password"]/div[1]/div/div[1]/input  \\13
    sleep  5s

Confirm the Account

    dismiss alert  accept=True
