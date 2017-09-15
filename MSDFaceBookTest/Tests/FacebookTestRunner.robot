*** Settings ***
Documentation  This is some basic info about the whole suite

Resource   ../Resources/Facebook.robot
Resource   ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown   End Web Test

*** Variables ***

${BROWSER} =  chrome
${URL} =  http://www.facebook.com


*** Test Cases ***

Facebook Registration Test

    Facebook.Facebook Registration
    Facebook.Gmail verification

Facebook Post Test

    Facebook.Facebook Login
    Facebook.Create a post
    Facebook.Publish a post
    Facebook.Delete a post
    Facebook.Logout from Facebook










