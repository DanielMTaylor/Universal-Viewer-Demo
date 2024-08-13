*** Settings ***
Resource  ../Resources/PO/login.robot
Resource  ../Data/Input_Data.robot
Resource  ../Resource/setup.robot
Force Tags  BrowserStack

#python -m robot -d Results -i 14__Login_Navigation tests/14__Login_Scenarios.robot

*** Variables ***

*** Test Cases ***
Navigating to forgotten passworrd
    [Documentation]  This is to perform Regression tests for 'many' sound items
    [Tags]  14__Login_Navigation
    Login.Login and navigate to forgotten password

Login Should Failed With Unregistered Mail Adress
    [Documentation]  This is to perform Regression tests for 'many' sound items
    [Tags]  14__Login_Navigation
    Open LinkedinPage  BROWSER=Chrome  BROWSER_VERSION=47.0  OS=Windows  OS_VERSION=7
    Enter User Name
    Enter Wrong Password
    Click Login
    sleep    5s
    Assert Warning Message
    [Teardown]    Close Browser

Login and navigate to forgotten password
    [Documentation]  This is to perform Regression tests for 'many' sound items
    [Tags]  14__Login_Navigation
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}
    Click Element  //div[@class="canvas-container"]
    Sleep  5s
    Click Element  //div[@title="Collapse Contents"]
    Click Element  //div[@title="Collapse Information"]
    Sleep  5s
    New Page  https://ssotest.bl.uk/idp/profile/SAML2/Redirect/SSO?execution=e1s2
    Click Element  //button[@class="btn btn-primary accept default"]
    Sleep  5s
    Input Text  //input[@name="j_username"]    dataylor
    Input Text  //input[@name="j_password"]    ***
    Sleep  5s
    Click Element  //button[@name="_eventId_proceed"]
    Sleep  5s
    Click Element  //span[@class="w3-closebtn w3-right w3-xlarge"]

Staff Access Login
    [Documentation]  This is to perform Regression tests for 'many' sound items
    [Tags]  14__Login_Navigation
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Click Element  //div[@class="canvas-container"]
    Sleep  5s
    SeleniumLibrary.Go to  https://ssotest.bl.uk/idp/profile/SAML2/Redirect/SSO?execution=e1s2
    Sleep  5s
    Click Element    //button[@class="btn btn-primary accept default"]
    Sleep  5s
    Input Text  //input[@name="j_username"]  dataylor
    Input Text  //input[@name="j_password"]  ***
    Sleep  5s
    Click Element  //button[@name="_eventId_proceed"]