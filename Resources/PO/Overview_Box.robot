*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Overview Box
    Wait Until Page Contains Element    //canvas
    Click Element    //canvas
    Wait Until Page Contains Element    //i[@class="uv-icon-settings"]
    Click Element    //i[@class="uv-icon-settings"]
    Wait Until Page Contains Element    //div[@class="setting navigatorEnabled"]
    Click Element    //div[@class="setting navigatorEnabled"]
    Wait Until Page Contains Element    //input[@id="navigatorEnabled"]
    Click Element    //input[@id="navigatorEnabled"]
    Wait Until Page Contains Element    xpath=(//button[@class="btn btn-default close"])[11]
    Click Element    xpath=(//button[@class="btn btn-default close"])[11]
    Wait Until Page Contains Element    //i[@class="uv-icon-settings"]
    Click Element    //i[@class="uv-icon-settings"]
    Wait Until Page Contains Element    //label[@for="navigatorEnabled"]
    Click Element    //label[@for="navigatorEnabled"]
    Wait Until Page Contains Element    xpath=(//button[@class="btn btn-default close"])[11]
    Click Element    xpath=(//button[@class="btn btn-default close"])[11]
    Click Element    //canvas
    #Screenshot