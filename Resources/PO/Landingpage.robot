*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Navigate To Sounds
    [Documentation]  Navigate to the specified URL, this will be dependent on the Environment and ARK type.
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}

Navigate To Books
    [Documentation]  Navigate to the specified URL, this will be dependent on the Environment and ARK type.
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${BOOK_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}

Navigate To Manuscripts
    [Documentation]  Navigate to the specified URL, this will be dependent on the Environment and ARK type.
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${MANUSCRIPTS_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}

Verify Page Loaded
    Wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}

Navigate To HTTP URL
    [Documentation]  Navigate to the specified URL, this will be dependent on the environment.
    SeleniumLibrary.Go to  ${BASE_URL.${ENVIRONMENT}}

Validate redirect to HTTPS works
    ${BASE_URL}=  Get Location
    ${ENVIRONMENT}=  Get Substring  ${BASE_URL}  0  -1
    should be equal as strings  ${BASE_URL}  ${BASE_URL.${ENVIRONMENT}}

Validate Page Contents
    [Documentation]  Verify that when the page is loaded the following elements appear
    Wait Until Page Contains Element  {LANDING_NAVIGATION_ELEMENT}  timeout=30s
    Element should contain  ${PAGE_HEADER_ELEMENT}  ${HOME_TEXT}
    Wait Until Page Contains Element

Verify Page URL
     [Documentation]  Verify that current page URL matches the expected URL.
     Location Should Contain  ${BASE_URL.${ENVIRONMENT}} timeout=15s000000000

