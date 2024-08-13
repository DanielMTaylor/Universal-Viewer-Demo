*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
SAPI-834 Oral History: Incorrect timecodes (range) when navigating, playing and pausing
    Open Browser    https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005097662.0x000002    ${BROWSER}
    Click Element    css=#tree-link-0-0-0
    Click Element    css=.av-icon.av-icon-play.play
    Click Element    xpath=(//a[@href="#"])[4]
    Click Element    xpath=(//span)[62]
    Click Element    xpath=(//a[@href="#"])[4]
    Click Element    xpath=(//span)[64]
    Click Element    xpath=(//a[@href="#"])[4]
    Click Element    xpath=(//span)[66]
    Click Element    xpath=(//a[@href="#"])[4]
    Click Element    xpath=(//span)[68]
    Click Element    xpath=(//a[@href="#"])[4]
    Click Element    xpath=(//span)[64]
    Click Element    xpath=(//a[@href="#"])[4]
    Click Element    xpath=(//span)[66]
    Click Element    xpath=(//a[@href="#"])[4]
    Click Element    xpath=(//span)[64]

SAPI-792 Oral History: Auto-playing when selecting durations from summary section - 3rd party
    Open Browser    https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005097662.0x000002    ${BROWSER}
    Click Element    //div[@class="toggle"]
    Click Link    //a[@id="tree-link-0-0-0"]
    Click Link    xpath=(//a[@class="toggle less"])[2]
    Click Element    xpath=(//span)[64]
    Click Element    xpath=(//span)[66]
    Click Element    xpath=(//span)[68]
    Click Element    xpath=(//span)[66]
    Click Element    xpath=(//span)[64]
    Click Element    xpath=(//span)[68]
    Click Element    xpath=(//span)[66]
    Click Element    xpath=(//span)[62]

Navigation browsers test
    FOR  ${i}  IN  @{BROWSER_LISTS}
       SeleniumLibrary.open browser  ${url}  ${i}
       Click Element  //div[@title="Collapse Contents"]
       Click Element  //div[@title="Collapse Information"]
       Sleep  5s
       Click Element  //i[@class="uv-icon-settings"]
       Sleep  2s
       Wait Until Page Contains Element   ${OVERLAY_ELEMENT}
       Sleep  5s
       SeleniumLibrary.close browser
    END

UI components Browser Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${url}  ${i}
      Sleep  5s
      Click Element    //div[@class="canvas-container"]
      Sleep  5s
      Click Element    //span[@class="ui-slider-handle ui-corner-all ui-state-default ui-state-focus ui-state-hover"]
      Sleep  5s
      Click Link    xpath=(//a[@title="Thumbnails"])[2]
      Click Link    //a[@title="Index"]
      Sleep  5s
      Click Link    //a[@id="tree-link-0-0-0-13"]
      Click Link    //a[@id="tree-link-0-0-0-26"]
      Click Link    //a[@id="tree-link-0-0-0-27"]
      Click Link    //a[@id="tree-link-0-0-0-30"]
      Sleep  5s
      Click Element    //div[@class="canvas-timeline-container ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"]
      Sleep  5s
      Click Element    //i[@class="av-icon av-icon-next"]
      Click Element    //i[@class="av-icon av-icon-next"]
      Sleep  5s
      Click Element    //div[@class="volume"]
      Click Element    //i[@class="av-icon av-icon-next"]
      Sleep  5s
      Click Link    //a[@id="tree-link-0-0-0-34"]
      Click Link    //a[@id="tree-link-0-0-0-29"]
      Sleep  5s
      Click Element    //i[@class="av-icon av-icon-play play"]
      Sleep  5s
      Click Element    //i[@class="av-icon av-icon-next"]
      Click Element    //i[@class="av-icon av-icon-next"]
   END

Begin Responsive Web Test
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    SeleniumLibrary.Go to  ${NEW_ENV_ARK}
    Set Window Position  400  -10
    Sleep  5s
    ${x}  ${y}=  Get Window Position
    Log  ${x}
    Log  ${y}
    Set Window Size  800  600
    Sleep  10s
    Wait until page contains element  //div[@title="About This Item"]

Checking Overlay has appeared
    FOR  ${i}  IN  @{BROWSER_LISTS}
        SeleniumLibrary.open browser  ${url}  ${i}
        Click Element  //div[@title="Collapse Contents"]
        Click Element  //div[@title="Collapse Information"]
        Sleep  5s
        Click Element  //i[@class="uv-icon-settings"]
        Sleep  2s
        Wait Until Page Contains Element   ${OVERLAY_ELEMENT}
        Sleep  5s
        SeleniumLibrary.close browser
    END

Minimising/full screen check Overlay
    Maximize browser window
    Click Element  //div[@title="Collapse Contents"]
    Sleep  5s
    Click Element  //i[@class="uv-icon-settings"]
    Sleep  5s
    Click Element    xpath=(//button[@class="btn btn-default close"])[8]
    sleep  5s
    Click Link  //a[@title="Expand Contents"]
    Sleep  5s
    Click Element  //i[@class="uv-icon-settings"]
    Sleep  5s
    Wait Until Page Contains Element  ${OVERLAY_ELEMENT}
    Sleep  5s
    Click Element  xpath=(//button[@class="btn btn-default close"])[8]
    Sleep  5s
    Click Element  xpath=(//div[@class="top"])[3]
    Sleep  5s
    Click Element  xpath=(//div[@class="collapseButton"])[2]

Verify Page Loaded
    Wait until page contains  ${LANDING_TEXT}

Navigating to next page
    Click element  //*[@id="uv"]/div/div/div[1]/div[1]/div[1]/div[4]/button[1]

Navigating to previous page
    Click button

Wait for Page to load
    Wait Until Page Contains Element    //a[@class="thumbs tab on"]

Navigating Universal Viewer
    Sleep    2s
    Navigation.Wait for Page to load
    Click Element  //i[@class="uv-icon-next"]
    Sleep    2s
    Click Element  //i[@class="uv-icon-next"]
    Sleep    2s
    Click Element  //i[@class="uv-icon-next"]
    Sleep    2s
    Click Element  //i[@class="uv-icon-prev"]
    Sleep    2s
    Click Element  //i[@class="uv-icon-prev"]
    Sleep    2s
    Click Element  //i[@class="uv-icon-prev"]
    Sleep    2s
    Click Element  //i[@class="uv-icon-last"]
    Sleep    2s
    Click Element  //i[@class="uv-icon-first"]
    Sleep    2s

Navigating pages with bounds
    Sleep    2s
    Click Element    //i[@class="uv-icon-next"]
    Sleep    2s
    Click Element    //i[@class="uv-icon-next"]
    Sleep    2s
    Click Element    //i[@class="uv-icon-next"]
    Sleep    2s
    Click Element    //i[@class="uv-icon-next"]
    Sleep    2s
    Click Element    //i[@class="uv-icon-prev"]
    Sleep    2s
    Click Element    //i[@class="uv-icon-prev"]
    Sleep    2s
    Click Element    //i[@class="uv-icon-prev"]
    Sleep    2s
    Click Element    //i[@class="uv-icon-prev"]
    Sleep    2s
    Input Text    //input[@class="autocompleteText"]    -1
    Sleep    2s
    Click Link    //a[@title="Go"]
    Sleep    2s
    Click Element    //button[@class="btn btn-primary accept default"]
    Sleep    2s
    Input Text    //input[@class="autocompleteText"]    0
    Sleep    2s
    Click Link    //a[@title="Go"]
    Click Element    //button[@class="btn btn-primary accept default"]
    Sleep    2s
    Input Text    //input[@class="autocompleteText"]    485.5
    Sleep    2s
    Click Link    //a[@title="Go"]
    Sleep    2s
    Input Text    //input[@class="autocompleteText"]    487
    Sleep    2s
    Click Link    //a[@title="Go"]
    Sleep    2s
    Click Element  //button[@class="btn btn-primary accept default"]

Navigation on Mobile Config
   Click Element    //div[@class="controls-container"]
   Click Element    //div[@class="canvas-container"]
   Sleep  2s
   Click Element    //div[@class="canvas-timeline-container ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"]
   Sleep  2s
   Click Element    //div[@class="canvas-timeline-container ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"]
   Sleep  2s
   Click Element    //div[@class="canvas-timeline-container ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"]
   Click Element    //i[@class="av-icon av-icon-previous"]
   Sleep  5s
   Click Element    //i[@class="av-icon av-icon-previous"]
   Click Element    //i[@class="av-icon av-icon-previous"]
   Sleep  5s
   Click Element    //i[@class="av-icon av-icon-next"]
   Click Element    //i[@class="av-icon av-icon-next"]
   Sleep  5s

Full screen functionalty