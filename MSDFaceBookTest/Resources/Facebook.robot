*** Settings ***

Resource   ../Resources/PageObjects/GmailVerificationPage.robot
Resource   ../Resources/PageObjects/HomePage.robot
Resource   ../Resources/PageObjects/LandingPage.robot
Resource   ../Resources/PageObjects/RegistrationConfirmationPage.robot
Resource   ../Resources/PageObjects/TimelinePage.robot


*** Keywords ***

Facebook Registration
    LandingPage.Load
    LandingPage.Verify Page Loaded
    LandingPage.Provide Required Details for Registration
    LandingPage.Create the Account
    RegistrationConfirmationPage.Verify Page Loaded

Gmail Verification
    RegistrationConfirmationPage.Connect to Gmail
    GmailVerificationPage.Verify Page Loaded
    GmailVerificationPage.Authenticate to Gmail


Facebook Login

    LandingPage.Load
    LandingPage.Verify Page Loaded
    LandingPage.Login
    HomePage.Verify Page Loaded

Create a Post

    HomePage.Navigate to Timeline Page
    TimelinePage.Write the POst
    TimelinePage.Set the Visibility of the Post

Publish a Post

    TimelinePage.Publish Post

Delete a Post

    Timelinepage.Delete the post

Logout from Facebook

    TimelinePage.Logout




