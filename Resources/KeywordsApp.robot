*** Settings ***
Library  SeleniumLibrary
Library  Browser
Resource  ../Resources/PO/Landingpage.robot
Resource  ../Resources/PO/ARK's.robot
Resource  ../Data/Input_Data.robot


*** Variables ***

*** Keywords ***
Navigate to New Env and New Sound ARK Page
    Landingpage.Navigate To Sounds
    Click Element    //a[@class="expandButton"]
    Sleep    5s
    Click Element    xpath=(//a[@class="expandButton"])[2]
    Sleep    5s
    Click Element    //h2[@class="title"]
    Sleep    5s
    Click Element    xpath=(//h2[@class="title"])[2]
    Sleep    5s
    Click Element    //div[@class="options"]
    Sleep    5s
    Landingpage.Verify Page Loaded

Navigate to New Env and New Books ARK Page
    Landingpage.Navigate To Books
    Landingpage.Verify Page Loaded

Navigate to New Env and New Manuscripts ARK Page
    Landingpage.Navigate To Manuscripts
    Landingpage.Verify Page Loaded

For loop on Sound ARK's from Excel
    ARK's.Get Sound Arks from Excel

For loop on Aggregated ARK's from Excel
    ARK's.Get Aggregated Sound Arks from Excel

For loop on Scenario ARK's from Excel
    ARK's.Get Scenario Sound Arks from Excel

For loop on Manuscript ARK's from Excel
    ARK's.Get Manuscript Arks from Excel

For loop on Book ARK's from Excel
    ARK's.Get Book Arks from Excel

TEST For loop on Sounds ARK's from Excel
    ARK's.TEST Tranlation loop

This allows user to exit full screen
    Click Element  //i[@class="uv-icon uv-icon-exit-fullscreen"]

Go To Landing Page
    Landingpage.Navigate To Landing Page
    Landingpage.Verify Page Loaded

Changing Geolocation
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation.See Google page in ${location}
    END

Changing Geolocation for 1.1
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation.1 See Google page in 1.1 ${location}
    END

Changing Geolocation for 1.2
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation.2 See Google page in 1.2 ${location}
    END

Changing Geolocation for 1.3
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation.3 See Google page in 1.3 ${location}
    END

Changing Geolocation for 2.1
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation.4 See Google page in 2.1 ${location}
    END

Changing Geolocation for 13.1_Public_Editing
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation. See Google page in 13.1_Public_Editing ${location}
    END

Changing Geolocation for 15.1_Private_Editing
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation.2 See Google page in 15.1_Private_Editing ${location}
    END

Changing Geolocation for 16.8_Non_Commercial_Streaming_Only
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation.3 See Google page in 16.8_Non_Commercial_Streaming_Only ${location}
    END

Changing Geolocation for 17.4_Reading_Room_Only_Sensative
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation.4 See Google page in 17.4_Reading_Room_Only_Sensative ${location}
    END

Changing Geolocation for 17.5_Reading_Room_Only_CR
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation.5 See Google page in 17.5_Reading_Room_Only_CR ${location}
    END

Changing Geolocation for 18.1 _Staff_Access_Only
    Browser.New Browser  chromium    headless=false
    Browser.New Context  permissions=["geolocation"]    viewport={'width': 1920, 'height': 1080}
    Sleep  5s
    New Page  https://google.com/
    Sleep  5s
    Click  xpath=//*[@id="L2AGLb"]
    FOR    ${location}  IN    @{locations_list}
        Geolocation.6 See Google page in 18.1_Staff_Access_Only ${location}
    END

Run Browser Test
    FOR  ${i}  IN  @{BROWSER_LISTS}
       SeleniumLibrary.open browser  ${url}  ${i}
       SeleniumLibrary.close browser
    END

Navigation Browser Test
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
      Click Element     //i[@class="av-icon av-icon-next"]
      Click Element     //i[@class="av-icon av-icon-next"]
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

Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${url}  ${i}
      Set Window Position  400  -10
      Sleep  5s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  800  600
      Sleep  5s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

2.0 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${url}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  799  500
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

Responsive iPhone 12 Mini Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${url}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  360  780
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

Responsive iPhone 11 Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${url}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  414  896
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

Responsive One Plus 9 Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${url}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  412  915
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

13.1 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_13.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  800  600
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

13.1 2.0 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_13.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  799  500
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

13.1 Responsive iPhone 12 Mini Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_13.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  360  780
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

13.1 Responsive iPhone 11 Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_13.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  414  896
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

13.1 Responsive One Plus 9 Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_13.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  412  915
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

15.1 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_15.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  800  600
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

15.1 2.0 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_15.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  799  500
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

15.1 Responsive iPhone 12 Mini Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_15.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  360  780
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

15.1 Responsive iPhone 11 Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_15.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  414  896
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

15.1 Responsive One Plus 9 Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_15.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  412  915
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

16.8 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_16.8_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  800  600
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

16.8 2.0 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_16.8_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  799  500
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

16.8 Responsive iPhone 12 Mini Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_16.8_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  360  780
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

16.8 Responsive iPhone 11 Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_16.8_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  414  896
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

16.8 Responsive One Plus 9 Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_16.8_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  412  915
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

17.4 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_17.4_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  800  600
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

17.4 2.0 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_17.4_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  799  500
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

17.4 Responsive iPhone 12 Mini Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_17.4_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  360  780
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

17.4 Responsive iPhone 11 Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_17.4_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  414  896
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

17.4 Responsive One Plus 9 Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_17.4_URL}   ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  412  915
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

17.5 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_17.5_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  800  600
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

17.5 2.0 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_17.5_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  799  500
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

17.5 Responsive iPhone 12 Mini Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_17.5_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  360  780
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

17.5 Responsive iPhone 11 Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_17.5_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  414  896
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

17.5 Responsive One Plus 9 Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_17.5_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  412  915
      Sleep  10s
      Wait until page contains element  //a[@class="expandButton"]
      SeleniumLibrary.close browser
   END

18.1 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_18.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  800  600
      Sleep  10s
      Wait until page contains element  //div[@class="options"]
      SeleniumLibrary.close browser
   END

18.1 2.0 Responsive Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_18.1_URL} ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  799  500
      Sleep  10s
      Wait until page contains element  //div[@class="options"]
      SeleniumLibrary.close browser
   END

18.1 Responsive iPhone 12 Mini Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_18.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  360  780
      Sleep  10s
      Wait until page contains element  //div[@class="options"]
      SeleniumLibrary.close browser
   END

18.1 Responsive iPhone 11 Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_18.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  414  896
      Sleep  10s
      Wait until page contains element  //div[@class="options"]
      SeleniumLibrary.close browser
   END

18.1 Responsive One Plus 9 Web Test
   FOR  ${i}  IN  @{BROWSER_LISTS}
      SeleniumLibrary.open browser  ${RES_18.1_URL}  ${i}
      Set Window Position  400  -10
      Sleep  10s
      ${x}  ${y}=  Get Window Position
      Log  ${x}
      Log  ${y}
      Set Window Size  412  915
      Sleep  10s
      Wait until page contains element  //div[@class="options"]
      SeleniumLibrary.close browser
   END

New ui based tests
   SeleniumLibrary.Open Browser  ${url}  ${Browser}
   Maximize Browser Window
   Title Should Be    example domain
   SeleniumLibrary.Close Browser
