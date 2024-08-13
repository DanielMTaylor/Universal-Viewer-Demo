*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Keywords ***
Begin Web Test
    SeleniumLibrary.Open Browser  about:blank  ${BROWSER}  headless=false
    Maximize browser window

Navigate to Home page
    go to

End Web Test
    SeleniumLibrary.Close all Browsers

Insert Testing Data
    Log  I am setting up the test data...

Cleanup Testing Data
    Log  I am cleaning up the test data....

See Google page in ${location}
    Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Take Screenshot    fullpage=True
    Reload
    Pause Execution
