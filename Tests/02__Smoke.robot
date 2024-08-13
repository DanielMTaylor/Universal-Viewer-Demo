*** Settings ***
Documentation    This is to perform a Smoke Test on the Universal Viewer
Library    String
Library    Browser
Resource  ../Resources/Common.robot
Resource  ../Resources/API/Get_Requests.robot
Resource  ../Resources/KeywordsApp.robot
Resource  ../Resources/PO/landingpage.robot
Resource  ../Resources/PO/Rotation.robot
Resource  ../Resources/PO/Zooming.robot
Resource  ../Resources/PO/Navigation.robot
Resource  ../Data/Input_Data.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

#python -m robot -d Results tests/02__Smoke.robot

*** Test Cases ***
Smoke Check Roles on DEV Server
    [Documentation]  This is to get requests on DEV
    [Tags]  02__Smoke_Test
    Get_Requests.Check_DEV_Staff_SADM_200
    Sleep    2s
    Get_Requests.Check_DEV_Reader_SADM_200
    Sleep    2s
    Get_Requests.Check_DEV_Public_SADM_200
    Sleep    2s
    Get_Requests.
    Sleep    2s
    Get_Requests.
    Sleep    2s
    Get_Requests.

Smoke Run Through Sounds On All Key Browsers
    [Documentation]  This is to perform Regression tests for 'many' browsers
    [Tags]  02__Smoke_Test
    KeywordsApp.Run Browser Test

Smoke Run Multiple Sounds Test
    [Documentation]  This is to perform Regression tests for 'many' sound items
    [Tags]  02__Smoke_Test
    KeywordsApp.For loop on Sound ARK's from Excel

Smoke Run Navigating Universal Viewer
    [Documentation]  This is to Perform Regression Tests for Page Navigation
    [Tags]  02__Smoke_Test
    KeywordsApp.Navigate to New Env and New Books ARK Page
    Sleep  5s
    Navigation.Navigating Universal Viewer
    Sleep  5s
    Navigation.Navigating pages with bounds

Smoke Run Overlay Verification Tests
    [Documentation]  This is to Perform Regression Tests for overlay on settings
    [Tags]  02__Smoke_Test
    KeywordsApp.Navigate to New Env and New Sound ARK Page
    Sleep  5s
    Navigation.Minimising/full screen check Overlay

Smoke Run Locale (Translate) Eng (GB) to All
    [Documentation]  This is to Perform Regression Tests for Traslations
    [Tags]  02__Smoke_Test
    Sleep  5s
    Settings.Translate Eng (GB) to Cymaeg
    Sleep  5s
    Settings.Translate Eng (GB) to Francais (FR)
    Sleep  5s
    Settings.Translate Eng (GB) to Polski
    Sleep  5s
    Settings.Translate Eng (GB) to Svenska

Smoke Run Set Geolocation for Rights Based Testing on sound ark
    [Documentation]  This sets the location from the data and applies it to google setting
    [Tags]  02__Smoke_Test
    KeywordsApp.Changing Geolocation

Smoke Run Set Geolocation for Rights Based Testing on 13.1_Public_Editing
    [Documentation]  Public Editing
    [Tags]  02__Smoke_Test
    KeywordsApp.Changing Geolocation for 13.1_Public_Editing

Smoke Run Set Geolocation for Rights Based Testing on 15.1_Private_Editing
    [Documentation]  Private Editing
    [Tags]  02__Smoke_Test
    KeywordsApp.Changing Geolocation for 15.1_Private_Editing

Smoke Run Set Geolocation for Rights Based Testing on 16.8_Non_Commercial_Streaming_Only
    [Documentation]  Non Commercial Streaming Only
    [Tags]  02__Smoke_Test
    KeywordsApp.Changing Geolocation for 16.8_Non_Commercial_Streaming_Only

Smoke Run Set Geolocation for Rights Based Testing on 17.4_Reading_Room_Only_Sensative
    [Documentation]  Reading Room Only Sensative
    [Tags]  02__Smoke_Test
    KeywordsApp.Changing Geolocation for 17.4_Reading_Room_Only_Sensative

Smoke Run Set Geolocation for Rights Based Testing on 17.5_Reading_Room_Only_CR
    [Documentation]  Reading Room Only CR
    [Tags]  02__Smoke_Test
    KeywordsApp.Changing Geolocation for 17.5_Reading_Room_Only_CR

Smoke Run Set Geolocation for Rights Based Testing on 18.1 _Staff_Access_Only
    [Documentation]  Staff Access Only
    [Tags]  02__Smoke_Test
    KeywordsApp.Changing Geolocation for 18.1 _Staff_Access_Only