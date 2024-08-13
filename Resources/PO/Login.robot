*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Login and navigate to forgotten password
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

Login and Navigate to Forgotten Password 2.0
    [Arguments]    ${environment}    ${username}    ${password}
    ${base_url}    Set Variable    ${BASE_URL.${environment}}
    ${new_env_ark}    Catenate    SEPARATOR=/    ${base_url}    ${SOUND_ARK_URL}
    SeleniumLibrary.Go to    ${new_env_ark}
    Click Element    //div[@class="canvas-container"]
    Sleep    5s
    Click Element    //div[@title="Collapse Contents"]
    Click Element    //div[@title="Collapse Information"]
    Sleep    5s
    Go to    https://ssotest.bl.uk/idp/profile/SAML2/Redirect/SSO?execution=e1s2
    Click Element    //button[@class="btn btn-primary accept default"]
    Sleep    5s
    Input Text    //input[@name="j_username"]    ${username}
    Input Text    //input[@name="j_password"]    ${password}
    Sleep    5s
    Click Element    //button[@name="_eventId_proceed"]
    Sleep    5s
    Click Element    //span[@class="w3-closebtn w3-right w3-xlarge"]

Staff Access Login
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