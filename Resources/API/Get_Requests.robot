*** Settings ***
Documentation    This is to perform API Tests on the Universal Viewer
Library    SeleniumLibrary
Library    RequestsLibrary

*** Keywords ***
Check_NLE_Public_SADM_200_1.1
    [Documentation]  API Testing
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_1.1_PUBLIC}
    log to console  ${response.status_code}
    log to console  ${response.content}

Check_NLE_Staff_SADM_200_1.1
    [Documentation]  API Testing
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_1.1_STAFF}
    log to console  ${response.status_code}
    log to console  ${response.content}

Check_NLE_Reader_SADM_200_1.1
    [Documentation]  API Testing
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_1.1_READER}
    log to console  ${response.status_code}
    log to console  ${response.content}

Check_NLE_Public_SADM_200_1.2
    [Documentation]  API Testing
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_1.2_PUBLIC}
    log to console  ${response.status_code}
    log to console  ${response.content}

Check_NLE_Staff_SADM_200_1.2
    [Documentation]  API Testing
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_1.2_STAFF}
    log to console  ${response.status_code}
    log to console  ${response.content}

Check_NLE_Reader_SADM_200_1.2
    [Documentation]  API Testing
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_1.2_READER}
    log to console  ${response.status_code}
    log to console  ${response.content}

Check_NLE_Public_SADM_200_1.3
    [Documentation]  API Testing
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_1.3_PUBLIC}
    log to console  ${response.status_code}
    log to console  ${response.content}

Check_NLE_Staff_SADM_200_1.3
    [Documentation]  API Testing
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_1.3_STAFF}
    log to console  ${response.status_code}
    log to console  ${response.content}

Check_NLE_Reader_SADM_200_1.3
    [Documentation]  API Testing
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_1.3_READER}
    log to console  ${response.status_code}
    log to console  ${response.content}

Check_NLE_Reader_SADM_200_
    [Documentation]  API Testing
    [Tags]  01__Error2
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_1.3_READER}
    log to console  ${response.status_code}
    log to console  ${response.content}



    #--------------------------------------------------------------------------

Check_Staff_13.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_13.1_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Reader_13.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_13.1_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Public_13.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_13.1_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_UKHE_13.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_13.1_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Staff_15.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_15.1_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Reader_15.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_15.1_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Public_15.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_15.1_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_UKHE_15.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_15.1_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Staff_16.8_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_16.8_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Reader_16.8_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_16.8_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Public_16.8_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_16.8_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_UKHE_16.8_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_16.8_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Staff_17.4_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.4_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Reader_17.4_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.4_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Public_17.4_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.4_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_UKHE_17.4_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.4_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Staff_17.5_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.5_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Reader_17.5_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.5_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Public_17.5_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.5_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_UKHE_17.5_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_17.5_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Staff_18.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_18.1_STAFF}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Reader_18.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_18.1_READER}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_Public_18.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_18.1_PUBLIC}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

Check_UKHE_18.1_SADM_Responses
    [Documentation]  API Testing
    [Tags]  01__Error1
    @{auth}  create list  ad  username  password
    Create NTLM Session    get sadm    ${SADM_API_BASE_URL}  auth=@{auth}
    ${response}=    Get on session    get sadm   ${RAQ_ID_18.1_UKHE}
    run keyword and continue on failure  log to console  ${response.status_code}
    run keyword and continue on failure  log to console  ${response.content}

SoapUI Get Request
    [Documentation]  API Testing
    [Tags]  01__Error6
    @{auth}  create list  ad  username  password
    Create NTLM Client    http://mer.ad.bl.uk/mer_access/metadata?ark=ark:/81055/vdc_100061655555.0x000002&type=Rights
    ${response}  Call Soap Methodf With XML  ${CURDIR}/SAMPLE
    ${text}  Get Data From XML  ${response}  AddResult
    Log  ${text}
    Log to console  ${text}

#Test api error code 200 and geolocation
    #[Documentation]
    #[Tags]   API
    #${ip_address}  set variable @{location_list}  # replace with desired ip address
    #${headers} create dictionary  content=type=application/json
    #${response} get request  ${BASE_URL}${locations}  headers=${headers}
    #should be equal as strings  ${response.satus_code}   200
    #${json_response}  Set Variable  ${response.json()}
    #should be true  '${json_response["status"]}' == 'success'
    #should be true  '${json_response["query"]}' == '${ip_address}
    #log ${json_response}

Verify Successful Authentication
    [Documentation]    Verify that the API authentication is successful
    [Tags]    API    Authentication
    @{auth}    Create List    ad    username    password
    Create NTLM Session    ${auth}    auth=@{auth}
    ${authentication_response}    Get On Session    ${SADM_SIT_AUTH_URL}
    Should Be Equal As Strings    ${authentication_response.status_code}    200
    Should Contain    ${authentication_response.content}    Authenticated Successfully

Verify Response Status Code
    [Documentation]    Verify that the API response status code is as expected
    [Tags]    API
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}
    ${response}    Get On Session    get sadm    ${RAQ_ID_1.3_STAFF}
    Should Be Equal As Integers    ${response.status_code}    200

Verify Specific Data in the Response
    [Documentation]    Verify that specific data is present in the API response
    [Tags]    API
    Create NTLM Session    get sadm    ${SADM_SIT_AUTH_URL}
    ${response}    Get On Session    get sadm    ${RAQ_ID_1.3_STAFF}
    Should Contain    ${response.content}    Expected Data json
