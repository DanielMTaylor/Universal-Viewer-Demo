*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Check Manifest.JSON For Square Brackets "body"
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}

Check "Services" items for auth cookie and probe #Will be required later
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}

Check Manifest For Waveform URL "SeeAlso" Amazon To House Library
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}

Check Manifest For "Items" Element In The Array
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}

Check AUDIO Works For The Manifest Item
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}


    ${Manifest_BASE} = catenate SEPARATOR=/  ${Manifest_BASE.${M_ENV}}
    ${Manifest_Item}
    ${M_ENV}