*** Settings ***
Documentation    This is to perform a multiple Settings tests on the Universal Viewer
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Rotation.robot
Resource  ../Resources/PO/Zooming.robot
Resource  ../Resources/PO/Navigation.robot
Resource  ../Resources/PO/Settings.robot
Resource  ../Data/Input_Data.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

#python -m robot -d Results tests/07__Settings.robot
#python -m robot -d Results -i 07__Translate tests/07__Settings.robot
#python -m robot -d Results -i 07__Overview box tests/07__Settings.robot
#python -m robot -d Results -i 07__Zoom tests/07__Settings.robot
*** Variables ***

*** Test Cases ***
Locale (Translate) Eng (GB) to Cymaeg
    [Documentation]  Cymaeg has Cliciwch gyda'r llygoden i glosio
    [Tags]  07__Translate
    Settings.Translate Eng (GB) to Cymaeg

Locale (Translate) Eng (GB) to Francais (FR)
    [Documentation]  été `summer', août `August', ça `that' and père `father';
    [Tags]  07__Translate
    Settings.Translate Eng (GB) to Francais (FR)

Locale (Translate) Eng (GB) to Polski
    [Documentation]  Polish has łza `tear', źle `badly' and pięć `five'
    [Tags]  07__Translate
    Settings.Translate Eng (GB) to Polski

Locale (Translate) Eng (GB) to Svenska
    [Documentation]  Svenska has Zooma med musklick
    [Tags]  07__Translate
    Settings.Translate Eng (GB) to Svenska

Locale (Translate) Eng (GB) to Eng (xx-XX)
    [Documentation]  xx-XX has undefined
    [Tags]  07__Translate
    Settings.Translate Eng (GB) to Eng (xx-XX)

#Locale (Translate) Eng (GB) to German
    #[Documentation] German has Wörter `words' and tschüss `good-bye';
    #[Tags]  07__Translate
    #Settings.Translate Eng (GB) to German

#Locale (Translate) Eng (GB) to Spanish
    #[Documentation] Spanish has mañana `tomorrow' and ángel `angel';
    #[Tags]  07__Translate
    #Settings.Translate Eng (GB) to Spanish

#Locale (Translate) Eng (GB) to Norwegian
    #[Documentation] Norwegian has brød `bread' and frå `from';
    #[Tags]  07__Translate
    #Settings.Translate Eng (GB) to Norwegian

#Locale (Translate) Eng (GB) to Turkish
    #[Documentation] Turkish has kuş `bird' and göz `eye';
    #[Tags]  07__Translate
    #Settings.Translate Eng (GB) to Turkish

#Locale (Translate) Eng (GB) to Welsh
    #[Documentation] Welsh has tŷ
    #[Tags]  07__Translate
    #Settings.Translate Eng (GB) to Welsh

#Turn on Overview box
    #[Tags]  07__Overview box

#Turn off Overview box
    #[Tags]  07__Overview box

#Mouse Click To Zoom
    #[Tags]  07__Overview box

#Mouse Click To Zoom out? (We should implement a way to Zoom out from Mouse)
    #[Tags]  07__Overview box

#Keep zoom level the same between pages
    #[Tags]  07__Zoom

#Keep zoom level the same between pages
    #[Tags]  07__Zoom

#Jira Ticket SAPI-78 UP - Metadata
#Ensure diacritics displayed correctly -
#examples like words like été `summer', août `August', ça `that' and père `father';
#German has Wörter `words' and tschüss `good-bye';
#Spanish has mañana `tomorrow' and ángel `angel';
#Norwegian has brød `bread' and frå `from';
#Polish has łza `tear', źle `badly' and pięć `five';
#Turkish has kuş `bird' and göz `eye';
#Welsh has tŷ

