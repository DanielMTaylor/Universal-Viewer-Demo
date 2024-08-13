*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  Dialogs
Library  Browser


*** Variables ***

*** Keywords ***
Dialog Begin Web Test
   set log level  Debug
   ${new_browser} =  Get Selection From User  Which browser?  chrome  edge  firefox
   Set Global Variable  ${BROWSER}  ${new_browser}

Dialog Begin Environment Sound Test
   set log level  Debug
   ${ENVIRONMENT} =  Get Selection From User  Which Environment?
   ...  NLE
   ...  SIT
   ...  BETA
   ...  DEV
   ...  ACCESS
   ...  IRC
   ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
   Set Global Variable  ${BASE_URL.${ENVIRONMENT}}
   SeleniumLibrary.go to  ${NEW_ENV_ARK}

Dialog Begin Environment Book Test
   set log level  Debug
   ${ENVIRONMENT} =  Get Selection From User  Which Environment?
   ...  NLE
   ...  SIT
   ...  BETA
   ...  DEV
   ...  ACCESS
   ...  IRC
   ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${BOOK_ARK_URL}
   Set Global Variable  ${BASE_URL.${ENVIRONMENT}}
   SeleniumLibrary.go to  ${NEW_ENV_ARK}

Dialog Begin Environment Manuscript Test
   set log level  Debug
   ${ENVIRONMENT} =  Get Selection From User  Which Environment?
   ...  NLE
   ...  SIT
   ...  BETA
   ...  DEV
   ...  ACCESS
   ...  IRC
   ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${MANUSCRIPTS_ARK_URL}
   Set Global Variable  ${BASE_URL.${ENVIRONMENT}}
   SeleniumLibrary.go to  ${NEW_ENV_ARK}

Dialog Changing Env and Geolocation
   Browser.New Browser    chromium    headless=false
   Browser.New Context    permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
   Sleep    5s
   New Page    https://google.com
   Sleep    5s
   Click    xpath=(//div[@class="jyfHyd"])[2]
   FOR    ${location}  IN    @{locations_list}
      Geolocation.Dialog Test change Geolocation and Select Env
   END

WIP Dialog env Test for multiple browser
   Set log level  Debug
   FOR  ${i}  IN  @{BROWSER_LISTS}
      ${ENVIRONMENT} =  Get Selection From User  Which Environment?
      ...  NLE
      ...  SIT
      ...  BETA
      ...  DEV
      ...  ACCESS
      ...  IRC
      ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
      Set Global Variable  ${BASE_URL.${ENVIRONMENT}}
      SeleniumLibrary.go to  ${NEW_ENV_ARK}
   END

Dialog Changing Env and RAQ_ID Tests
      ${ARK_TYPE} =  Get Selection From User  Which RAQ_ID?
      ...  13.1_Public_Editing
      ...  15.1_Private_Editing
      ...  16.8_Non_Commercial_Streaming_Only
      ...  17.4_Reading_Room_Only_Sensative
      ...  17.5_Reading_Room_Only_CR
      ...  18.1_Staff_Access_Only
      ${Selected_RAQ_ID}=  Set Variable  ${RAQ_ID["${ARK_TYPE}"]}
      ${ENVIRONMENT} =  Get Selection From User  Which Environment?
      ...  DEV
      ...  SIT
      ...  NLE
      ...  BETA
      ...  ACCESS
      ...  IRC
      ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${Selected_RAQ_ID}
      Set Global Variable  ${FULL_RAQ_URL}  ${NEW_ENV_ARK}
      Log  ${FULL_RAQ_URL}
      SeleniumLibrary.go to  ${FULL_RAQ_URL}

Dialog Changing Env and RAQ_ID Tests
    ${ARK_TYPE}=  Get Selection From User  Which RAQ_ID?
    ...  @{RAQ_IDS}
    ${Selected_RAQ_ID}=  Set Variable  ${RAQ_ID["${ARK_TYPE}"]}
    ${ENVIRONMENT}=  Get Selection From User  Which Environment?
    ...  @{ENVIRONMENTS}
    ${NEW_ENV_ARK}=  Catenate  SEPARATOR=/  ${BASE_URL}[${ENVIRONMENT}]  ${Selected_RAQ_ID}
    Set Global Variable  ${FULL_RAQ_URL}  ${NEW_ENV_ARK}
    Log  ${FULL_RAQ_URL}
    Go To  ${FULL_RAQ_URL}

