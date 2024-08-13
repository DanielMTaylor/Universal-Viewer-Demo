*** Settings ***
Documentation  This is to perform a Regression Test on the Universal Viewer
Library  Dialogs
Library  String
Library  Browser
Library  SeleniumLibrary
Resource  ../Resources/Common.robot
Resource  ../Resources/Dialog.robot
Resource  ../Resources/API/Get_Requests.robot
Resource  ../Resources/KeywordsApp.robot
Resource  ../Resources/PO/Settings.robot
Resource  ../Resources/PO/Navigation.robot
Resource  ../Resources/PO/Rotation.robot
Resource  ../Resources/PO/Zooming.robot
Resource  ../Resources/PO/Geolocation.robot
Resource  ../Resources/PO/ARK's.robot
Resource  ../Resources/PO/login.robot
Resource  ../Resources/PO/Download.robot
Resource  ../Data/Input_Data.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

#& 'C:\Program Files\python310\python.exe' -m robot -d Results -i 01__Regression1 tests/01__Regression.robot
#python -m robot -d Results -i 01__Regression1 tests/01__Regression.robot

*** Variables ***

*** Test Cases ***
TC001_Smoke_Check_Roles_on_NLE_Server
    [Documentation]  This is to get requests on DEV
    [Tags]  01__Regression1
    Get_Requests.Check_NLE_Public_SADM_200_1.1
    Sleep  5s
    Get_Requests.Check_NLE_Staff_SADM_200_1.1
    Sleep  5s
    Get_Requests.Check_NLE_Reader_SADM_200_1.1
    Sleep  5s
    Get_Requests.Check_NLE_Public_SADM_200_1.2
    Sleep  5s
    Get_Requests.Check_NLE_Staff_SADM_200_1.2
    Sleep  5s
    Get_Requests.Check_NLE_Reader_SADM_200_1.2
    Sleep  5s
    Get_Requests.Check_NLE_Public_SADM_200_1.3
    Sleep  5s
    Get_Requests.Check_NLE_Staff_SADM_200_1.3
    Sleep  5s
    Get_Requests.Check_NLE_Reader_SADM_200_1.3

#TC002_Navigating_to_Forgotten_Password
    #[Documentation]  Navigating to the login page
    #[Tags]  01__Regression
    #Login.Login and navigate to forgotten password

TC003_Run_through_sounds_on_all_browsers
    [Documentation]  This is to perform Regression tests for 'many' browsers
    [Tags]  01__Regression1
    KeywordsApp.Run Browser Test

TC004_Responsive_Player_Web_Tests
    [Documentation]  Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Regression1
    KeywordsApp.Responsive Web Test
    Sleep  5s
    KeywordsApp.2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.Responsive iPhone 11 Test

TC005_Responsive_Player_Web_Tests
    [Documentation]  13.1 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Regression1
    KeywordsApp.13.1 Responsive Web Test
    Sleep  5s
    KeywordsApp.13.1 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.13.1 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.13.1 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.13.1 Responsive iPhone 11 Test

TC006_Responsive_Player_Web_Tests
    [Documentation]  15.1 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Regression1
    KeywordsApp.15.1 Responsive Web Test
    Sleep  5s
    KeywordsApp.15.1 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.15.1 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.15.1 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.15.1 Responsive iPhone 11 Test

TC007_Responsive Player Web Tests
    [Documentation]  16.8 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Regression1
    KeywordsApp.16.8 Responsive Web Test
    Sleep  5s
    KeywordsApp.16.8 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.16.8 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.16.8 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.16.8 Responsive iPhone 11 Test

TC008_Responsive Player Web Tests
    [Documentation]  17.4 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Regression1
    KeywordsApp.17.4 Responsive Web Test
    Sleep  5s
    KeywordsApp.17.4 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.17.4 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.17.4 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.17.4 Responsive iPhone 11 Test

TC009_Responsive Player Web Tests
    [Documentation]  17.5 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Regression1
    KeywordsApp.17.5 Responsive Web Test
    Sleep  5s
    KeywordsApp.17.5 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.17.5 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.17.5 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.17.5 Responsive iPhone 11 Test

TC010_Responsive Player Web Tests
    [Documentation]  18.1 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Regression1
    KeywordsApp.18.1 Responsive Web Test
    Sleep  5s
    KeywordsApp.18.1 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.18.1 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.18.1 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.18.1 Responsive iPhone 11 Test

TC011_Overlay Verification Tests
    [Documentation]  This is to Perform Regression Tests for overlay on settings
    [Tags]  01__Regression1
    KeywordsApp.Navigate to New Env and New Sound ARK Page
    Sleep  5s
    Navigation.Minimising/full screen check Overlay

TC012_Run Multiple Sounds Test
    [Documentation]  This is to perform Regression tests for 'many' sound items
    [Tags]  01__Regression1
    KeywordsApp.For loop on Sound ARK's from Excel
    Sleep  10s
    KeywordsApp.For loop on Manuscript ARK's from Excel

    #Sleep  5s
    #KeywordsApp.For loop on Book ARK's from Excel
    #KeywordsApp.For loop on Scenario ARK's from Excel
    #Sleep  5s

TC013_Test_Applying_ARK_to_Environment
    [Documentation]  This is to perform Adding different ARKs to ENV
    [Tags]  01__Regression1
    KeywordsApp.Navigate to New Env and New Sound ARK Page
    Sleep  5s
    KeywordsApp.Navigate to New Env and New Books ARK Page
    Sleep  5s
    KeywordsApp.Navigate to New Env and New Manuscripts ARK Page

TC014_Opening Universal Viewer
    [Documentation]  This is to Perform Regression Tests for Item Navigation
    [Tags]  01__Regression1
    KeywordsApp.Navigate to New Env and New Books ARK Page
    Sleep  5s
    Wait Until Page Contains Element  //h2[@class="title"]
    Sleep  5s
    Rotation.Rotate Item Right
    Sleep  5s
    Zooming.ClickToZoom

TC015_Navigating Universal Viewer
    [Documentation]  This is to Perform Regression Tests for Page Navigation
    [Tags]  01__Regression1
    KeywordsApp.Navigate to New Env and New Books ARK Page
    Sleep  5s
    Navigation.Navigating Universal Viewer
    Sleep  5s
    Navigation.Navigating pages with bounds

#TC015_Locale (Translate) Eng (GB) to All
    #[Documentation]  This is to Perform Regression Tests for Traslations
    #[Tags]  01__Regression1
    #Sleep  5s
    #Settings.Translate Eng (GB) to Cymaeg
    #Sleep  5s
    #Settings.Translate Eng (GB) to Francais (FR)
    #Sleep  5s
    #Settings.Translate Eng (GB) to Polski
    #Sleep  5s
    #Settings.Translate Eng (GB) to Svenska

TC016_Setting Geolocation for Rights Based Testing on sound ark
    [Documentation]  This sets the location from the data and applies it to google setting
    [Tags]  01__Regression1
    KeywordsApp.Changing Geolocation

TC017_Setting Geolocation for Rights Based Testing on 1.1
    [Documentation]  Public Editing
    [Tags]  01__Regression1
    KeywordsApp.Changing Geolocation for 1.1

TC018_Setting Geolocation for Rights Based Testing on 1.2
    [Documentation]  Private Editing
    [Tags]  01__Regression1
    KeywordsApp.Changing Geolocation for 1.2

TC019_Setting Geolocation for Rights Based Testing on 1.3
    [Documentation]  Non Commercial Streaming Only
    [Tags]  01__Regression1
    KeywordsApp.Changing Geolocation for 1.3

TC020_Setting Geolocation for Rights Based Testing on 17.4_Reading_Room_Only_Sensative
     [Documentation]  Reading Room Only Sensative
    [Tags]  01__Regression
    KeywordsApp.Changing Geolocation for 2.1

TC021_Setting Geolocation for Rights Based Testing on 17.5_Reading_Room_Only_CR
    [Documentation]  Reading Room Only CR
    [Tags]  01__Regression
    KeywordsApp.Changing Geolocation for 17.5_Reading_Room_Only_CR

TC022_Setting Geolocation for Rights Based Testing on 18.1 _Staff_Access_Only
    [Documentation]  Staff Access Only
    [Tags]  01__Regression
    KeywordsApp.Changing Geolocation for 18.1 _Staff_Access_Only

#TC023_Dialog Test Manual Select ENV and Apply Sound ARK
    #[Documentation]  This is to perform Dialog tests for 'Many' Sound Items
    #[Tags]  01__Regression1
    #Dialog.Dialog Begin Environment Sound Test

#TC024_Dialog Test Manual Select ENV and Apply Book ARK
    #[Documentation]  This is to perform Dialog tests for 'many' Book items
    #[Tags]  01__Regression1
    #Dialog.Dialog Begin Environment Book Test

#TC025_Dialog Test Manual Select ENV and Apply Manuscript ARK
    #[Documentation]  This is to perform Dialog tests for 'many' Manuscript items
    #[Tags]  01__Regression
    #Dialog.Dialog Changing Env and Loop SoundArk from Excel
    #sleep  5s
    #Dialog.Dialog Begin Environment Manuscript Test

#TC026_Dialog Test Manual select ENV and Apply Geolocation change
    #[Documentation]  This is to perform Dialog tests geo locking and env changes
    #[Tags]  01__Regression3
    #Dialog.Select Browser Loop Aggragated from Excel

#TC027_Dialog Test Manual select ENV and Apply Geolocation change
    #[Documentation]  This is to perform Dialog tests geo locking and env changes
    #[Tags]  01__Regression323
    #Download.Download Sound Arks from Excel

#ARK's.Dialog Test Changing Geolocation on many sound arks

#Staff Access to Restricted Content
    #[Documentation]  Navigating Back to the Universal Viewer
    #[Tags]  01__Regression
    #Login.Staff Access Login

#Smoke Check Roles on NLE Server
    #[Documentation]  This is to get requests on NLE
    #[Tags]  01__Regression11
    #Get_Requests.Check_NLE_Staff_SADM_200

#Smoke Check Roles on SIT
    #[Documentation]  This is to get requests on SIT
    #[Tags]  01__Regression11
    #Get_Requests.Check_SIT_Staff_SADM_200

    #Dialog.Select Browser Loop SoundArk from Excel
    #Dialog.Dialog Changing Env and Loop SoundArk from Excel
    #ARK's.WIP Multiple Sound Arks from Excel