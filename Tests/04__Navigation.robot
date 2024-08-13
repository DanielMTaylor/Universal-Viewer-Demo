*** Settings ***
Documentation    This is to perform multiple Navigation Tests on the Universal Viewer
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Navigation.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

#python -m robot -d Results tests/04__Navigation.robot
#python -m robot -d Results -i 04__Navigating tests/04__Navigation.robot

*** Test Cases ***
Navigating Universal Viewer
    [Tags]  04__Navigating
    Navigation.Navigating Universal Viewer

Navigating pages with bounds
    [Tags]  04__Navigating
    Navigation.Navigating pages with bounds

Navigating to check full and minimise screen and overlay
    [Tags]  04__Navigating
    Navigation.Minimising/full screen check Overlay

Navigating to check overlay
    [Tags]  04__Navigating
    Navigation.Checking Overlay has appeared
