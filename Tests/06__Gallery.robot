*** Settings ***
Documentation    This is to perform a multiple Gallary Test on the Universal Viewer
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Rotation.robot
Resource  ../Resources/PO/Zooming.robot
Resource  ../Resources/PO/Navigation.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

#python -m robot -d Results tests/06__Gallery.robot
#python -m robot -d Results -i 06__thumbnails tests/06__Gallery.robot

*** Test Cases ***
Selecting thumbnail
    #[Tags]  06__thumbnails


Multi select on thumbnail
    #[Tags]  06__thumbnails

Title
    #[Tags]  06__thumbnails
