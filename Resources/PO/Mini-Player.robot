*** Keywords ***
Login and navigate to forgotten password
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}

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