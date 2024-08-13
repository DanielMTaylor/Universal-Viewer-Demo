*** Settings ***
Library  SeleniumLibrary
#Library  DataDriver  ../Data/SoundArks20.xlsx  sheet_name=Sheet1
Resource  ../Resources/Common.robot
Resource  ../Resources/ARK's.robot
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/Navigation.robot
Resource  ../Resources/KeywordsApp.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Test Template
Suite Teardown  Common.Cleanup Testing Data

#python -m robot -d Results i- 11__Sound_Waveform1 tests/11__Sound_Waveform.robot
#python -m robot -d Results tests/11__Sound_Waveform.robot

*** Variables ***

*** Test Cases ***
Netlifty Sound Example
    [Documentation]
    [Tags]  11__Sound_Waveform1
    #Navigation.Navigate To
    KeywordsApp.Go to Landing Page

Check indexing and bl info
    [Documentation]
    [Tags]  11__Sound_Waveform1
    KeywordsApp.Go to Landing Page








