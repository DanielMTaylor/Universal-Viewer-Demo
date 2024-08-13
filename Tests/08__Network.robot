*** Settings ***
Documentation    This is to perform a multiple Settings tests on the Universal Viewer
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Rotation.robot
Resource  ../Resources/PO/Zooming.robot
Resource  ../Resources/PO/Navigation.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

#python -m robot -d Results tests/08__Network.robot
#python -m robot -d Results i- 08__NETWORK tests/08__Network.robot

*** Test Cases ***
Test title
    [Tags]  08__NETWORK
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test