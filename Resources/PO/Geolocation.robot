*** Settings ***
Library  Browser

*** Variables ***

*** Keywords ***
See Google page in ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${SOUND_ARK_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

1 See Google page in 1.1 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${1.1_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

2 See Google page in 1.2 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${1.2_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

3 See Google page in 1.3 ${location}
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${1.3_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

4 See Google page in 2.1 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${2.1_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

5 See Google page in 2.2 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${2.2_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

6 See Google page in 2.3 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${2.3_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload


7 See Google page in 3.1 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${3.1_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

8 See Google page in 3.2 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${3.2_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload


9 See Google page in 3.3 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${3.3_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload


10 See Google page in 3.4 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${3.4_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

11 See Google page in 3.5 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${3.5_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

12 See Google page in 5.1 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${5.1_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

13 See Google page in 5.2 ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${5.2_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

14 See Google page in 13.1_Public_Editing ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${13.1}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

15 See Google page in 15.1_Private_Editing ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${15.1_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

16 See Google page in 16.8_Non_Commercial_Streaming_Only ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${16.8_Non_Commercial_Streaming_Only}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

17 See Google page in 17.4_Reading_Room_Only_Sensative ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${17.4_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

18 See Google page in 17.5_Reading_Room_Only_CR ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${17.5_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

19 See Google page in 18.1_Staff_Access_Only ${location}
    Browser.Set Geolocation    ${${location}}[0]    ${${location}}[1]
    Sleep  2s
    New Page    https://www.google.com/search?q=where+is+my+location&rlz=1C1GCEA_enGB929GB929&oq=where+is+my+locatio&aqs=chrome.0.0j69i57j0l8.2954j0j15&sourceid=chrome&ie=UTF-8
    Sleep  2s
    ${NEW_ENV_ARK} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${18.1_URL}
    Browser.Go to  ${NEW_ENV_ARK}
    Sleep  5s
    Browser.Reload

