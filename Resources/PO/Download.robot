*** Settings ***
Library  SeleniumLibrary
Library  ExcelLibrary
Library  RPA.Excel.Files
Library  Dialogs
Documentation  Loop Sound Files

*** Variables ***

*** Keywords ***
Download Sound Arks from Excel
    [Documentation]  For downloading "Aggregated Sound" Arks from spreadsheet
    open excel document  C:\\Users\\DaTaylor\\Development\\British-Library-Projects\\Test_Data\\AggregatedArks1.xlsx  docid
    ${Aggregated_Arks}=  Read excel column  1  sheet_name=AggregatedArks1
    Log Many  @{AggregatedArks}
    FOR    ${AggregatedArk}    IN    @{AggregatedArks}
       ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${AggregatedArk}
       SeleniumLibrary.Go to  ${NEW_ENV_ARK}
       Sleep    5s
       Run Keyword And Continue On Failure  Click Element    //*[@id="download-btn"]/i
       Run Keyword And Continue On Failure  Click Link    xpath=(//a[@href="#"])[10]
       Run Keyword And Continue On Failure  Click Link    //a[@id="downloadButton"]
    END
    Close Workbook

