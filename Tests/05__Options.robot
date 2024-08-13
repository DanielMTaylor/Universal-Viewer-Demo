*** Settings ***
Documentation    This is to perform a multiple Option tests on the Universal Viewer
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Rotation.robot
Resource  ../Resources/PO/Zooming.robot
Resource  ../Resources/PO/Navigation.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

#python -m robot -d Results tests/05__Options.robot
#python -m robot -d Results -i 05__Print tests/05__Options.robot
#python -m robot -d Results -i 05__Download tests/05__Options.robot
#python -m robot -d Results -i 05__Feedback tests/05__Options.robot
#python -m robot -d Results -i 05__Share tests/05__Options.robot

*** Test Cases ***
Print
    [Tags]  05__Print

Print
    [Tags]  05__Print

Download Whole image 4871 x 5980px (jpg)
    [Tags]  05__Download

Download Whole image 1000 x 1227px (jpg) Opens in a new window.
    [Tags]  05__Download

Select some or all pages for download
    [Tags]  05__Download

Terms of Use
    [Tags]  05__Download

Feedback page loaded
    [Tags]  05__Feedback

Feedback type in comment section
    [Tags]  05__Feedback

Feedback send feedback
    [Tags]  05__Feedback

Share publication
    [Tags]  05__Share

Embed item
    [Tags]  05__Embed
