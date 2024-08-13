*** Settings ***
Documentation    This is to perform API Tests on the Universal Viewer
Resource  ../Resources/API/Get_Requests.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/KeywordsApp.robot
Resource  ../Resources/PO/Rotation.robot
Resource  ../Resources/PO/Zooming.robot
Resource  ../Resources/PO/Navigation.robot
Resource  ../Data/Input_Data.robot
Library    String
Library    Browser
Library    SoapLibrary
Library    RequestsLibrary
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

#python -m robot -d Results tests/03__UV_API.robot
#python -m robot -d Results -i 01__Error1 tests/03__UV_API.robot

*** Variables ***


*** Test Cases ***
1.0 Check_NLE_Staff_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_NLE_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_STAFF_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

1.1 Check_NLE_Public_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error90
    Create Session  mysession  ${1.1_Public_Domain_Downloads}
    ${response}=    Get on session  mysession  ${1.1_Public_Domain_Downloads}
    log to console  ${response.status_code}
    log to console  ${response.content}

6.1 Check_NLE_Staff_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error90
    Create Session  mysession  ${18.1_Staff_Access_Only}
    ${response}=    Get on session  mysession  ${18.1_Staff_Access_Only}
    log to console  ${response.status_code}
    log to console  ${response.content}

2.0 Check_NLE_Reader_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_NLE_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_READER_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

3.0 Check_NLE_Public_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create                                                                                                                                                                           NTLM Session    get sadm    ${SADM_NLE_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_PUBLIC_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

4.0 Check_NLE_UKHE_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_NLE_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_UKHE_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

5.0 Check_DEV_Staff_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_DEV_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_STAFF_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

6.0 Check_DEV_Reader_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_DEV_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_READER_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

7.0 Check_DEV_Public_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_DEV_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_PUBLIC_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

8.0 Check_DEV_UKHE_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_DEV_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_UKHE_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

9.0 Check_SIT_Staff_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_STAFF_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

10.0 Check_SIT_Reader_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_READER_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

11.0 Check_SIT_Public_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_PUBLIC_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

12.0 Check_SIT_UKHE_SADM_200
    [Documentation]  API Test
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${SADM_UKHE_RESPONSE}
    log to console  ${response.status_code}
    log to console  ${response.content}

13.0 Check_Staff_13.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_13.1_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

14.0 Check_Reader_13.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_13.1_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

15.0 Check_Public_13.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_13.1_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

16.0 Check_UKHE_13.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_13.1_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

17.0 Check_Staff_15.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_15.1_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

18.0 Check_UKHE_15.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_15.1_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

19.0 Check_UKHE_15.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_15.1_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

20.0 Check_UKHE_15.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_15.1_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

21.0 Check_UKHE_16.8_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_16.8_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

22.0 Check_UKHE_16.8_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_16.8_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

23.0 Check_UKHE_16.8_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_16.8_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

24.0 Check_UKHE_16.8_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_16.8_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

25.0 Check_Staff_17.4_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.4_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

26.0 Check_Reader_17.4_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.4_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

27.0 Check_Public_17.4_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.4_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

28.0 Check_UKHE_17.4_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.4_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

29.0 Check_Staff_17.5_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.5_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

30.0 Check_Reader_17.5_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.5_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

31.0 Check_Public_17.5_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.5_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

32.0 Check_UKHE_17.5_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.5_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}


33.0 Check_Staff_18.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_18.1_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

34.0 Check_Staff_18.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_18.1_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

35.0 Check_Staff_18.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_18.1_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

36.0 Check_Staff_18.1_SADM_Responses
    [Documentation]  API Test
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_18.1_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

37.0 SoapUI Get Request
    [Documentation]  API Test
    [Tags]  01__Error6
    @{auth}  create list  ad  username  password
    Create NTLM Client    http://mer.ad.bl.uk/mer_access/metadata?ark=ark:/81055/vdc_100061655555.0x000002&type=Rights
    ${response}  Call Soap Methodf With XML  ${CURDIR}/SAMPLE
    ${text}  Get Data From XML  ${response}  AddResult
    Log  {text}
    Log to console  ${text}

Test API endpoint 200
   [Tags]  API
   Create Session    api_session    ${API_ENDPOINT}
   Add Header    Authorization  bearer ${AUTH_TOKEN}
   ${response}=    Get Request    api_session    /resource
   Should Be Equal    ${response.status_code}    200
   ${json}=  To Json  ${response.text}
   ${value}= Get From Dictionary  ${json}  key
   Should Be Equal    ${value}    expected_value

Test API endpoint 404
   [Tags]  API
   Create Session    api_session    ${API_ENDPOINT}
   Add Header    Authorization  bearer ${AUTH_TOKEN}
   ${response}=    Get Request    api_session    /resource
   Should Be Equal    ${response.status_code}    404
   ${json}=  To Json  ${response.text}
   ${value}= Get From Dictionary  ${json}  message
   Should Be Equal    ${error_message}    "Resource not found"

Refactored api call
   create NTLM Session  sadm  ${API_ENDPOINT} ${USERNAME}  ${PASSWORD}
   ${response}=  GET  sadm  ${RAQ_ID}
   Log To Console    ${response.status_code}
   Log To Console    ${response.content}




