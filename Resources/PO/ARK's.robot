*** Settings ***
Library  SeleniumLibrary
Library  ExcelLibrary
Library  RPA.Excel.Files
Library  Browser
Library  Dialogs
Documentation  Loop Sound Files

*** Variables ***

*** Keywords ***
Get Sound Arks from Excel
    [Documentation]  For retrieving "Sound" Arks from spreadsheet
    open excel document  C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\SoundArks1.xlsx  docid
    ${Sound_Arks}=  Read excel column  1  sheet_name=SoundArks1
    Log Many  @{SoundArks}
    FOR    ${SoundArk}    IN    @{SoundArks}
       ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SoundArk}
       SeleniumLibrary.Go to  ${NEW_ENV_ARK}
       Sleep    5s
    END
    Close Workbook

Get Book Arks from Excel
    [Documentation]  For retrieving "Books" Arks from spreadsheet
    open excel document  C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\GoogleBooks_ARKS.xlsx  docid
    ${Book_Arks}=  Read excel column  1  sheet_name=Sheet1
    Log Many  @{BookArks}
    FOR    ${BookArk}    IN    @{BookArks}
       ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${BookArk}
       SeleniumLibrary.Go to  ${NEW_ENV_ARK}
       Sleep    5s
    END
    Close Workbook

Get Manuscript Arks from Excel
    [Documentation]  For retrieving "Manuscript" Arks from spreadsheet
    open excel document  C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\Manuscript_ARKS.xlsx  docid
    ${Manuscript_Arks}=  Read excel column  1  sheet_name=sheet1
    Log Many  @{ManuscriptArks}
    FOR    ${ManuscriptArk}    IN    @{ManuscriptArks}
       ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${ManuscriptArk}
       SeleniumLibrary.Go to  ${NEW_ENV_ARK}
       Sleep    5s
    END
    Close Workbook

Get Aggregated Sound Arks from Excel
    [Documentation]  For retrieving "Aggregated" Arks from spreadsheet
    open excel document  C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\AggregatedArks1.xlsx  docid
    ${Aggregated_Arks}=  Read excel column  1  sheet_name=AggregatedArks1
    Log Many  @{AggregatedArks}
    FOR    ${AggregatedArk}    IN    @{AggregatedArks}
       ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${AggregatedArk}
       SeleniumLibrary.Go to  ${NEW_ENV_ARK}
       Sleep    5s
    END
    Close Workbook

Get Live Arks from Excel
    [Documentation]  For retrieving "Sound" Arks from spreadsheet
    open excel document  C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\LiveArks2.xlsx  docid
    ${Live_Arks}=  Read excel column  1  sheet_name=LiveArks2
    Log Many  @{LiveArks}
    FOR    ${LiveArk}    IN    @{LiveArks}
       ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${LiveArk}
       SeleniumLibrary.Go to  ${NEW_ENV_ARK}
       Sleep    5s
    END
    Close Workbook

Retrieve Sound Arks
    [Documentation]    Retrieve "Sound" Arks from spreadsheet and check for "content"
    Open Excel Document    C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\LiveArks2.xlsx    docid
    ${Live_Arks}=    Read Excel Column    1    sheet_name=LiveArks2
    Log Many    @{Live_Arks}
    FOR    ${LiveArk}    IN    @{Live_Arks}
        ${NEW_ENV_ARK}=    Catenate    SEPARATOR=/    ${BASE_URL.${ENVIRONMENT}}    ${LiveArk}
        SeleniumLibrary.Go To    ${NEW_ENV_ARK}
        Sleep    5s
        ${page_content}=    Get Page Source
        Run Keyword If    'content' in ${page_content}    Log    Found "content" on the page
    END
    Close Workbook

Get Scenario Sound Arks from Excel
    [Documentation]  For retrieving "Aggregated" Arks from spreadsheet
    open excel document  C:\\Users\\DaTaylo0  sheet_name=ScenarioArks1
    Log Many  @{Scenario_Arks}
    FOR    ${Scenario_Ark}    IN    @{Scenario_Arks}
       ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${Scenario_Ark}
       SeleniumLibrary.Go to  ${NEW_ENV_ARK}
       Sleep    5s
    END
    Close Workbook

Test Changing Geolocation on many sound arks
    [Documentation]  Adding geolocation and to "Sound" Arks list
    Browser.New Browser    headless=false
    Browser.New Context    permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    Browser.New Page    https://www.google.com/
    Sleep  2s
    Browser.Click  xpath=(//div[@class="jyfHyd"])[2]
    Sleep  2s
    Open excel document  C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\SoundArks1.xlsx  docid
    ${Sound_Arks}=  Read excel column  1  sheet_name=SoundArks1
    Log Many  @{SoundArks}
    FOR    ${UV_SoundArk}  IN  @{SoundArks}
        FOR    ${location}  IN  @{locations_list}
            Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
            ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${UV_SoundArk}
            Browser.Go to  ${NEW_ENV_ARK}
            Sleep  2s
            Browser.Reload
            Sleep  2s
            Pause Execution
            Close Workbook
        END
    END

TEST Tranlation loop
    [Documentation]  Adding steps to ch rs\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\SoundArks1.xlsx  docid
    ${Sound_Arks}=  Read excel column  1  sheet_name=SoundArks1
    Log  @{SoundArks}
        FOR    ${SoundArk}    IN    @{SoundArks}
           ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SoundArk}
           SeleniumLibrary.Go to  ${NEW_ENV_ARK}
           Sleep    5s
           run keyword and continue on failure  Wait Until Page Contains Element    //div[@title="About This Item"]
           run keyword and continue on failure  Click Element    //i[@class="uv-icon-settings"]
           run keyword and continue on failure  Select From List By Value    //select[@id="locale"]    fr-FR
        END
    Close Workbook

TEST Navigation loop
    [Documentation]  Adding Regression For retrieving "Sound" Arks from spreadsheet
    open excel document  C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\SoundArks1.xlsx  docid
    ${Sound_Arks}=  Read excel column  1  sheet_name=SoundArks1
    Log Many  @{SoundArks}
        FOR    ${SoundArk}    IN    @{SoundArks}
           ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SoundArks}
           SeleniumLibrary.Go to  ${NEW_ENV_ARK}
           Sleep    5s
           run keyword and continue on failure  Click Element    xpath=(//div[@class="canvas-container"])[2]
           run keyword and continue on failure  Click Element    xpath=(//i[@class="av-icon av-icon-play play"])[2]
           run keyword and continue on failure  Click Element    //span[@class="ui-slider-handle ui-corner-all ui-state-default ui-state-hover ui-state-focus"]
           run keyword and continue on failure  Click Element    xpath=(//span)[19]
           run keyword and continue on failure  Click Element    //i[@class="av-icon av-icon-play pause"]
        END
    Close Workbook

WIP Select Browser Loop Aggragated from Excel
    [Documentation]  Run through all browsers and retrieving "Aggragated" Arks from spreadsheet
    open excel document  C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\AggregatedArks1.xlsx  docid
    ${Aggregated_Arks}=  Read excel column  1  sheet_name=AggregatedArks1
    Log Many  @{AggregatedArks}
    ${List_Count} =  Get length  ${Aggregated_Arks}
    Close Workbook
    FOR   ${AggregatedArk}    IN    @{AggregatedArks}
          ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${AggregatedArk}
          Set Global Variable  ${NEW_ENV_ARK}
       FOR  ${i}  IN  @{BROWSER_LISTS}
          SeleniumLibrary.open browser  ${i}  ${NEW_ENV_ARK}
          Check its loaded
          Sleep    2s
       END
       SeleniumLibrary.close browser
    END

WIP Select Browser Loop SoundArk from Excel
    [Documentation]  Run through all browsers and retrieving "Sound" Arks from spreadsheet
    open excel document  C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\SoundArks1.xlsx  docid
    ${snd_arks}=  Read excel column  1  sheet_name=SoundArks1
    Log  ${snd_arks}
    ${List_Count} =  Get length  ${snd_arks}
    Close Workbook
    FOR  ${i}  IN  @{BROWSER_LISTS}
         SeleniumLibrary.open browser  ${i}
       FOR  ${snd_ark}  IN  @{snd_arks}
          ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${snd_ark}
          SeleniumLibrary.go to  ${NEW_ENV_ARK}  ${i}
          Check its loaded
          Sleep    2s
       END
       SeleniumLibrary.close browser
    END

Test Changing Geolocation on many "items" arks
    [Documentation]  Adding geolocation and to "items" arks list
    FOR  ${browser}  IN  @{browsers}
         ${options} Evaluate {'geolocation': True}
         ${context} New Context  viewport={'width': 1920, 'height': 1800}, permissions=['geolocation']
         ${page} New Page ${variable_url}
         ${workbook} = Open Workbook ${excel_file}
         ${itemArks} = Read Column Values ${workbook} ${sheet_name} 1
        FOR  ${uv_itemArk}  IN  @{itemArks}
            FOR   ${location}  IN  @{location_list}
                  ${lat}, ${long} = Split String ${location} separator=${','}
                  ${options}= Evaluate {'latitude': ${lat}, 'longitude': ${long}}
                  ${new_env}= Catenate separator=/ ${base_url} ${environment} ${uv_itemArk}
                  Go To ${new_env} options=${options} browser=${browser}
                  Sleep 5s
                  Reload Page browser=${browser}
                  Sleep 5s
                  Pause Execution
            END
        END
        Close Workbook ${workbook}
    END

2 Test Changing Geolocation on many "items" arks
    [Documentation]  Adding geolocation and to "items" arks list
    ${options} Evaluate {'geolocation': True}
    ${context} New Context viewport={'width': 1920, 'height': 1800}, permissions=['geolocation']
    ${page} New Page ${variable_url}
    ${workbook} = Open Workbook ${excel_file}
    ${itemArks} = Read Column Values ${workbook} ${sheet_name} 1
    FOR  ${uv_itemArk}  IN  @{itemArks}
       FOR  ${location}  IN  @{location_list}
            ${lat}, ${long} = Split String ${location} separator=${','}
            ${options}= Evaluate {'latitude': ${lat}, 'longitude': ${long}}
            ${new_env}= Catenate separator=/ ${base_url} ${environment} ${uv_itemArk}
            Go To ${new_env} options=${options}
            Sleep  5s
            Reload Page
            Sleep  5s
            Pause Execution
       END
    END
    Close Workbook ${workbook}

Player Navigation
    [Documentation]  Sound ark player navigation
    Sleep  5s
    Click Element    xpath=(//div[@class="canvas-container"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-play play"])[2]
    Click Element    //span[@class="ui-slider-handle ui-corner-all ui-state-default ui-state-hover ui-state-focus"]
    Click Element    xpath=(//span)[19]
    Click Element    //i[@class="av-icon av-icon-play pause"]
    Sleep  5s
    Click Element    xpath=(//i[@class="av-icon av-icon-next"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-previous"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-play play"])[2]
    Sleep  5s
    Click Element    xpath=(//div[@class="canvas-timeline-container ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"])[2]
    Click Element    xpath=(//div[@class="hover-preview"])[3]
    Click Element    xpath=(//i[@class="av-icon av-icon-next"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-previous"])[2]
    Click Element    //i[@class="av-icon av-icon-play pause"]
    Click Element    xpath=(//i[@class="av-icon av-icon-next"])[2]
    Click Element    xpath=(//div[@class="volume"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-mute on"])[2]
    Click Element    xpath=(//div[@class="controls-container"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-mute off"])[2]
    Click Element    xpath=(//div[@class="canvas-timeline-container ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"])[2]
    Click Element    xpath=(//div[@class="canvas-container"])[2]
    Click Element    xpath=(//div[@class="ui-slider-range ui-corner-all ui-widget-header ui-slider-range-min"])[5]
    Sleep  5s
    Click Element    xpath=(//i[@class="av-icon av-icon-next"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-next"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-next"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-next"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-next"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-previous"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-previous"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-previous"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-previous"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-previous"])[2]
    Click Element    xpath=(//i[@class="av-icon av-icon-play play"])[2]
    Sleep  5s
    Click Element    //i[@class="av-icon av-icon-play pause"]
    Click Element    xpath=(//i[@class="av-icon av-icon-play play"])[2]
    Click Element    //i[@class="av-icon av-icon-play pause"]
    Click Element    xpath=(//i[@class="av-icon av-icon-play play"])[2]
    Click Element    //i[@class="av-icon av-icon-play pause"]
    Click Element    xpath=(//i[@class="av-icon av-icon-play play"])[2]