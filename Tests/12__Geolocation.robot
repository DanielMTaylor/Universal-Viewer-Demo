*** Settings ***
Documentation  Suite description
Library  Browser
Library  Dialogs
Resource  ../Data/Input_Data.robot
Resource  ../Resources/KeywordsApp.robot
Resource  ../Resources/PO/Geolocation.robot
Resource  ../Resources/PO/ARK's.robot


#python -m robot -d Results -i 12__Geolocation tests/12__Geolocation.robot

*** Variables ***

*** Test Cases ***
Geolocation for Rights Based Testing on 13.1_Public_Editing
    [Documentation]  Public Editing gl
    [Tags]  12__Geolocation
    KeywordsApp.Changing Geolocation for 13.1_Public_Editing

Geolocation for Rights Based Testing on 15.1_Private_Editing
    [Documentation]  Private Editing gl
    [Tags]  12__Geolocation
    KeywordsApp.Changing Geolocation for 15.1_Private_Editing

Geolocation for Rights Based Testing on 16.8_Non_Commercial_Streaming_Only
    [Documentation]  Non Commercial Streaming Only gl
    [Tags]  12__Geolocation
    KeywordsApp.Changing Geolocation for 16.8_Non_Commercial_Streaming_Only

Geolocation for Rights Based Testing on 17.4_Reading_Room_Only_Sensative
    [Documentation]  Reading Room Only Sensative gl
    [Tags]  12__Geolocation
    KeywordsApp.Changing Geolocation for 17.4_Reading_Room_Only_Sensative

Geolocation for Rights Based Testing on 17.5_Reading_Room_Only_CR
    [Documentation]  Reading Room Only CR gl
    [Tags]  12__Geolocation
    KeywordsApp.Changing Geolocation for 17.5_Reading_Room_Only_CR

Geolocation for Rights Based Testing on 18.1 _Staff_Access_Only
    [Documentation]  Staff Access Only gl
    [Tags]  12__Geolocation
    KeywordsApp.Changing Geolocation for 18.1 _Staff_Access_Only
