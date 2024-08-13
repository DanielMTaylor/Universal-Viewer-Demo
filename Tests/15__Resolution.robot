*** Settings ***
Documentation
Resource  ../../Data/Input_Data.robot
Resource  ../../Resources/KeywordsApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

#python -m robot -d Results -i 01__Responsive tests/Resolution.robot

*** Test Cases ***
13.1 Responsive Player Web Tests
    [Documentation]  13.1 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Responsive
    KeywordsApp.13.1 Responsive Web Test
    Sleep  5s
    KeywordsApp.13.1 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.13.1 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.13.1 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.13.1 Responsive iPhone 11 Test

15.1 Responsive Player Web Tests
    [Documentation]  15.1 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Responsive
    KeywordsApp.15.1 Responsive Web Test
    Sleep  5s
    KeywordsApp.15.1 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.15.1 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.15.1 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.15.1 Responsive iPhone 11 Test

16.8 Responsive Player Web Tests
    [Documentation]  16.8 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Responsive
    KeywordsApp.16.8 Responsive Web Test
    Sleep  5s
    KeywordsApp.16.8 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.16.8 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.16.8 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.16.8 Responsive iPhone 11 Test

17.4 Responsive Player Web Tests
    [Documentation]  17.4 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Responsive
    KeywordsApp.17.4 Responsive Web Test
    Sleep  5s
    KeywordsApp.17.4 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.17.4 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.17.4 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.17.4 Responsive iPhone 11 Test

17.5 Responsive Player Web Tests
    [Documentation]  17.5 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Responsive
    KeywordsApp.17.5 Responsive Web Test
    Sleep  5s
    KeywordsApp.17.5 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.17.5 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.17.5 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.17.5 Responsive iPhone 11 Test

18.1 Responsive Player Web Tests
    [Documentation]  18.1 Responsive Web Tests (Look and Feel) for 'many' browsers
    [Tags]  01__Responsive
    KeywordsApp.18.1 Responsive Web Test
    Sleep  5s
    KeywordsApp.18.1 2.0 Responsive Web Test
    Sleep  5s
    KeywordsApp.18.1 Responsive One Plus 9 Web Test
    Sleep  5s
    KeywordsApp.18.1 Responsive iPhone 12 Mini Test
    Sleep  5s
    KeywordsApp.18.1 Responsive iPhone 11 Test