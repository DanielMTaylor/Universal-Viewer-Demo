*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
ClickToZoom
    Click Element    //i[@class="uv-icon-settings"]
    Wait Until Page Contains Element    //input[@id="clickToZoomEnabled"]
    Click Element    //input[@id="clickToZoomEnabled"]
    Wait Until Page Contains Element    xpath=(//button[@class="btn btn-default close"])[11]
    Click Element    xpath=(//button[@class="btn btn-default close"])[11]
    Wait Until Page Contains Element    //canvas
    Click Element    //canvas
    Wait Until Page Contains Element    //canvas
    Click Element    //canvas
    Wait Until Page Contains Element    //i[@class="uv-icon-settings"]
    Click Element    //i[@class="uv-icon-settings"]
    Wait Until Page Contains Element    //input[@id="clickToZoomEnabled"]
    Click Element    //input[@id="clickToZoomEnabled"]
    Wait Until Page Contains Element    xpath=(//button[@class="btn btn-default close"])[11]
    Click Element    xpath=(//button[@class="btn btn-default close"])[11]
    Wait Until Page Contains Element    //canvas
    Click Element    //canvas
    Wait Until Page Contains Element    //canvas
    Click Element    //canvas
    Wait Until Page Contains Element    //canvas
    Click Element    //canvas
    Wait Until Page Contains Element    //canvas
    Click Element    //canvas
    Wait Until Page Contains Element    //canvas
    Click Element    //canvas
    Wait Until Page Contains Element    //canvas
    Click Element    //canvas
