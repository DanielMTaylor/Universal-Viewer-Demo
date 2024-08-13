*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test

Edit data to produce more on description

#SAPI-79
UP - More Information Panel
#Ensuring logos for funders, collection holders and licenses are displayed correctly in the Player More Information panel - logo for the relevant license
#
#Ensuring metadata fields in More Information panel are displayed according to agreed designs in latest version of SAMI to UP mapping table
#
#When embedded externally is the player displayed with surrounding frame containing full rights metadata for the content, including BL logo, license, attributions?
#
#Ensuring mandatory statement box is displaying the correct rights statement for the current range, including the agreed text and hyperlinks to catalogue records in Explore and to the BL Ethical terms of use page.
#
#The metadata panel in the surrounding frame collapsible
#port (i.e. titles and performers) according to agreed designs.
#

#SAPI-78 UP -
Display metadata via viewport
#Information pane to display only the metadata relevant to the current
#
#Information pane list the metadata fields as specified in SAMI Mapping Table (attach)
#
Link to Catalogue record
#Link to view the full Explore for the in focus/playing ‘Recording' see. Mapping for URL source.

Logo display
#
#Is there a logo for the relevant license? 
#
#Is the logo also a link to the relevant license on the web? 
#
#Is there a logo for the holding or digitising institution?
#
#Is the logo also a link to the relevant institution’s homepage?
#
#Where recording type = oral history  all time-codes displayed in the Summary field in the metadata plane
#
#Ensure diacritics displayed correctly - examples like words like été `summer', août `August', ça `that' and père `father'; German has Wörter `words' and tschüss `good-bye'; Spanish has mañana `tomorrow' and ángel `angel'; Norwegian has brød `bread' and frå `from'; Polish has łza `tear', źle `badly' and pięć `five'; Turkish has kuş `bird' and göz `eye'; Welsh has tŷ
