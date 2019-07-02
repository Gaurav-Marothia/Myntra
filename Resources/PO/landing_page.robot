*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BASE_URL}  https://www.myntra.com/
${PROFILE_LINK}  //span[contains(text(), "Profile")]
${LOG-IN_LINK}  //a[contains(text(),'log in')]
${LOG-IN_BUTTON}  //*[contains(text(), 'Log in')]
${CONTINUE}  //button[@id='checkUser']


*** Keywords ***
I've Myntra account
    go to  ${BASE_URL}
    click element  ${PROFILE_LINK}
    click element  ${LOG-IN_LINK}

I enter valid username & password
    input text  //input[@name='email']  gaurav.fullstacktestautomation@gmail.com
    input password  //input[@name='password']  Eminem@32

I click Log-In button
    click element  ${LOG-IN_BUTTON}

I should be successfuly loged in
    click element  ${PROFILE_LINK}
    wait until page contains  gaurav.fullstacktestautomation@gmail.com

I enter invalid username & password
    input text  //input[@name='email']  gaurav@gmail.com
    input password  //input[@name='password']  fullstack

I should recieve an error message & should not be logged in
    wait until page contains  Incorrect user id or password
