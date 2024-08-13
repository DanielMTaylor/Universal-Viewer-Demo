*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Rotate Item Right
    Wait Until Page Contains Element    //div[@title="Rotate Right"]
    Click Element    //div[@title="Rotate Right"]
    Wait Until Page Contains Element    //div[@title="Rotate Right"]
    Click Element    //div[@title="Rotate Right"]
    Wait Until Page Contains Element    //div[@title="Rotate Right"]
    Click Element    //div[@title="Rotate Right"]
    Wait Until Page Contains Element    //div[@title="Rotate Right"]
    Click Element    //div[@title="Rotate Right"]
    Wait Until Page Contains Element    //div[@title="Rotate Right"]
    Click Element    //div[@title="Rotate Right"]

#Rotate Item Left
    #Wait Until Page Contains Element    //div[@title="Rotate Left"]
    #Click Element    //div[@title="Rotate Left"]
    #Wait Until Page Contains Element    //div[@title="Rotate Left"]
    #Click Element    //div[@title="Rotate Left"]
    #Wait Until Page Contains Element    //div[@title="Rotate Left"]
    #Click Element    //div[@title="Rotate Left"]
    #Wait Until Page Contains Element    //div[@title="Rotate Left"]
    #Click Element    //div[@title="Rotate Left"]
    #Wait Until Page Contains Element    //div[@title="Rotate Left"]
    #Click Element    //div[@title="Rotate Left"]
