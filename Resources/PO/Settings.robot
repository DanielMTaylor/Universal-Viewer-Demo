*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Translate Eng (GB) to Cymaeg
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}
    Wait Until Page Contains Element    //i[@class="About This Item"]
    Click Element    //i[@class="uv-icon-settings"]
    Select From List By Value    //i[@class="locale"]    cy-GB
    Sleep    5s
    Wait Until Page Contains Element    //i[@class="About This Item"]
    #Sleep    5s
    #Click Element    //i[@class="uv-icon-settings"]

Translate Eng (GB) to Francais (FR)
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}
    Sleep    5s
    Wait Until Page Contains Element    //div[@title="About This Item"]
    Click Element    //i[@class="uv-icon-settings"]
    Select From List By Value    //select[@id="locale"]    fr-FR
    Sleep    5s
    Wait Until Page Contains Element    //div[@title="About This Item"]
    Sleep    5s
    #Click Element    //i[@class="uv-icon-settings"]
    #Sleep    5s
    Wait Until Page Contains Element    //a[@href="https://github.com/universalviewer/universalviewer#contributors"]

Translate Eng (GB) to Polski
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}
    Sleep    5s
    Wait Until Page Contains Element    //div[@title="About This Item"]
    Click Element    //i[@class="uv-icon-settings"]
    Select From List By Value    //select[@id="locale"]    pl-PL
    Sleep    5s
    Wait Until Page Contains Element    //div[@title="About This Item"]
    Sleep    5s
    #Click Element    //i[@class="uv-icon-settings"]
    #Sleep    5s
    Wait Until Page Contains Element    //a[@href="https://github.com/universalviewer/universalviewer#contributors"]

Translate Eng (GB) to Svenska
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}
    Sleep    5s
    Wait Until Page Contains Element    //div[@title="About This Item"]
    Click Element    //i[@class="uv-icon-settings"]
    Select From List By Value    //select[@id="locale"]    sv-SE
    Sleep    5s
    Wait Until Page Contains Element    //div[@title="About This Item"]
    Sleep    5s
    #Click Element    //i[@class="uv-icon-settings"]
    #Sleep    5s
    Wait Until Page Contains Element    //a[@href="https://github.com/universalviewer/universalviewer#contributors"]

Translate Eng (GB) to Eng (xx-XX)
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}
    Sleep    5s
    Wait Until Page Contains Element    //div[@title="About This Item"]
    Click Element    //i[@class="uv-icon-settings"]
    Select From List By Value    //select[@id="locale"]    xx-XX
    Sleep    5s
    Wait Until Page Contains Element    //div[@title="About This Item"]
    Sleep    5s
    #Click Element    //i[@class="uv-icon-settings"]
    #Sleep    5s
    #Wait Until Page Contains Element    //a[@href="https://github.com/universalviewer/universalviewer#contributors"]

Turn on Overview box
    Click Element    //i[@class="uv-icon-settings"]

Turn off Overview box
    Click Element    //i[@class="uv-icon-settings"]

Mouse Click To Zoom
    Click Element    //i[@class="uv-icon-settings"]

Keep zoom level the same between pages check
    Click Element    //i[@class="uv-icon-settings"]

Keep zoom level the same between pages uncheck
    Click Element    //i[@class="uv-icon-settings"]

#SAPI-78
#UP - Metadata
#Ensure diacritics displayed correctly -
#examples like words like été `summer', août `August', ça `that' and père `father';
#German has Wörter `words' and tschüss `good-bye';
#Spanish has mañana `tomorrow' and ángel `angel';
#Norwegian has brød `bread' and frå `from';
#Polish has łza `tear', źle `badly' and pięć `five';
#Turkish has kuş `bird' and göz `eye';
#Welsh has tŷ