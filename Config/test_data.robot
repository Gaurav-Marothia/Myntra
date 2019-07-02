*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome

*** Keywords ***
Begin Web Test
    OPEN BROWSER  about:blank  ${browser}
    maximize browser window
    set selenium implicit wait  60s
    set selenium speed  2s

End Web Test
    CLOSE BROWSER
