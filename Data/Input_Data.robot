*** Variables ***
${BROWSER} =  firefox
@{BROWSER_LISTS}   chrome    firefox    edge

${ENVIRONMENT} =  IRC
&{BASE_URL}  SIT=http://v12l-uvsit-web1.ad.bl.uk/universalViewer/ark:/81055  NLE=http://v19b-uvweb1nle/UniversalViewer/ark:/81055  DEV=http://v19b-uvdevweb/UniversalViewer/ark:/81055   BETA=http://beta.access.bl.uk/item/viewer/ark:/81055   IRC=https://accessirc.ad.bl.uk/item/viewer/ark:/81055   ACCESS=http://access.bl.uk/item/viewer/ark:/81055

${SOUND_ARK_URL} =  tvdc_100005129893.0x000002
${BOOK_ARK_URL} =  tvdc_100004883336.0x000001
${MANUSCRIPTS_ARK_URL} =  tvdc_100002278432.0x000001  #placeholder

${url} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005129893.0x000002
&{RAQ_ID}  13.1_Public_Editing=  15.1_Private_Editing=  16.8_Non_Commercial_Streaming_Only=  17.4_Reading_Room_Only_Sensative=  17.5_Reading_Room_Only_CR=  18.1_Staff_Access_Only=
@{RAQ_IDS}    13.1_Public_Editing    15.1_Private_Editing    16.8_Non_Commercial_Streaming_Only    17.4_Reading_Room_Only_Sensative    17.5_Reading_Room_Only_CR    18.1_Staff_Access_Only
${Delay} =  5s

&{Manifest_Base} =  M_IRC=https://apiirc.ad.bl.uk/metadata/iiif/
${M_ENV} =
${Manifest_Item} =  ark:/81055/tvdc_100005114857.0x000002/manifest.json  #Create manifest item spreadsheet

#${ManifestArks}    Read Cell Data By Name
${SoundArks}    Read Cell Data By Name    SoundArks1    A1
${BookArks}    Read Cell Data By Name    GoogleBooks_ARKS    A1
${Manuscript}    Read Cell Data By Name    Manuscript_ARKS    A1
${Aggregated_Sounds}    Read Cell Data By Name    Aggregated arks    A1
${Scenario_Arks}    Read Cell Data By Name    ScenarioArks1    B2
#${Accessed_Subs_Arks}    Read Cell Data By Name    AVRC_DLS    F2

@{tokyo}          35.5079384    139.2080539
@{adelaide}       -35.0006861    138.4707357
@{stockholm}      59.3260664    17.8416304
@{moscow}         55.581705    37.1046724
@{beijing}        39.916668    116.383331
@{dublin}         53.350140    -6.266155
@{newyork}        40.730610    -73.935242
@{locations_list}    tokyo    adelaide    stockholm    moscow    beijing    dublin    newyork

${1.1_URL} =  tvdc_100005135726.0x000002
${1.2_URL} =  tvdc_100005135726.0x000002
${1.3_URL} =  tvdc_100005135726.0x000002
${2.1_URL} =  tvdc_100005135726.0x000002
${2.2_URL} =  tvdc_100005135726.0x000002
${2.3_URL} =  tvdc_100005135726.0x000002
${3.1_URL} =  tvdc_100005135726.0x000002
${3.2_URL} =  tvdc_100005135726.0x000002
${3.3_URL} =  tvdc_100005135726.0x000002
${3.4_URL} =  tvdc_100005135726.0x000002
${3.5_URL} =  tvdc_100005135726.0x000002
${5.1_URL} =  tvdc_100005135726.0x000002
${5.2_URL} =  tvdc_100005135726.0x000002
${7.1_URL} =  tvdc_100005135726.0x000002
${7.2_URL} =  tvdc_100005135726.0x000002
${7.4_URL} =  tvdc_100005135726.0x000002
${8.1_URL} =  tvdc_100005135730.0x000002
${8.2_URL} =  tvdc_100005135730.0x000002
${8.4_URL} =  tvdc_100005135730.0x000002
${9.1_URL} =  tvdc_100005135730.0x000002
${9.2_URL} =  tvdc_100005135730.0x000002
${9.4_URL} =  tvdc_100005135730.0x000002
${9.5_URL} =  tvdc_100005135730.0x000002
${9.6_URL} =  tvdc_100005135730.0x000002
${10.1_URL} =  tvdc_100005135730.0x000002
${10.2_URL} =  tvdc_100005135730.0x000002
${11.1_URL} =  tvdc_100005135730.0x000002
${11.2_URL} =  tvdc_100005135730.0x000002
${12.1_URL} =  tvdc_100005135730.0x000002
${12.2_URL} =  tvdc_100005135730.0x000002
${13.1_URL} =  tvdc_100005135730.0x000002
${13.2_URL} =  tvdc_100005135730.0x000002
${14.1_URL} =  tvdc_100005135730.0x000002
${14.2_URL} =  tvdc_100005135734.0x000002
${15.1_URL} =  tvdc_100005135734.0x000002
${15.2_URL} =  tvdc_100005135734.0x000002
${16.1_URL} =  tvdc_100005135734.0x000002
${16.2_URL} =  tvdc_100005135734.0x000002
${16.4_URL} =  tvdc_100005135734.0x000002
${16.5_URL} =  tvdc_100005135734.0x000002
${16.6_URL} =  tvdc_100005135734.0x000002
${16.7_URL} =  tvdc_100005135734.0x000002
${16.8_URL} =  tvdc_100005135734.0x000002
${17.1_URL} =  tvdc_100005135734.0x000002
${17.2_URL} =  tvdc_100005135734.0x000002
${17.3_URL} =  tvdc_100005135734.0x000002
${17.6_URL} =  tvdc_100005135734.0x000002
${17.7_URL} =  tvdc_100005135734.0x000002
${17.8_URL} =  tvdc_100005135734.0x000002

${17.4_URL} =  tvdc_100005135734.0x000002
${17.5_URL} =  tvdc_100005135734.0x000002
${18.1_URL} =  tvdc_100005135734.0x000002

${RES_1.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_1.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_1.3_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_2.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_2.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_2.3_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_3.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_3.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_3.3_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_3.4_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_3.5_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_5.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_5.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_7.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_7.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_7.4_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135726.0x000002
${RES_8.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_8.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_8.4_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_9.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_9.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_9.4_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_9.5_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_9.6_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_10.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_10.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_11.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_11.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_12.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_12.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_13.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_13.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_14.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135730.0x000002
${RES_14.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_15.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_15.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_16.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_16.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_16.4_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_16.5_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_16.6_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_16.7_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_16.8_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_17.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_17.2_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_17.3_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_17.6_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_17.7_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_17.8_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002

${RES_17.4_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_17.5_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002
${RES_18.1_URL} =  https://accessirc.ad.bl.uk/item/viewer/ark:/81055/tvdc_100005135734.0x000002

#http://v12l-uvsit-pre1/SADM/Playlist/

#ark:/81055/

${HOME_TEXT} =  about this item
${LANDING_NAVIGATION_ELEMENT} =  //i[@class="uv-icon-settings"]
${LANDING_TEXT} =  Universal
${OVERLAY_ELEMENT} =  //div[@class="overlays"]

${MODE} =  /view
${IP} =   /192.168.23.104
${Reading_IP} =  /194.66.226.95
${Parameters} =  /?roles=public
@{Roles}  staff  reader  public  UKHE
${Roles} =

${API_ENDPOINT} =
${AUTH_TOKEN} =
${USERNAME} =
${PASSWORD} =

${SADM_SIT_AUTH_URL} =  http://v12l-uvsit-pre1.ad.bl.uk/SADM/Authorise
${SADM_DEV_AUTH_URL} =  http://v19b-uvdevpres/SADM/Authorise
${SADM_DEV_Playlist_URL} =  http://v19b-uvdevpres/SADM/Playlist
${SADM_NLE_AUTH_URL} =  http://v19b-pres1nle.ad.bl.uk/SADM/Authorise
${SADM_NLE_Playlist_URL} =  http://v19b-pres1nle.ad.bl.uk/SADM/Playlist
${SADM_SIT_AUTH_URL} =  http://v12l-uvsit-pre1/SADM/Authorise
${SADM_SIT_Playlist_URL} =  http://v12l-uvsit-pre1/SADM/Playlist

#/ark:/81055/tvdc_100005135722.0x000009/view/194.66.238.27/staff
#http://v19b-pres1nle.ad.bl.uk/SADM/Authorise/ark:/81055/

${RAQ_ID_1.1_PUBLIC} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135742.0x00000c/view/194.66.238.27/public
${RAQ_ID_1.1_STAFF} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135742.0x00000c/view/194.66.238.27/staff
${RAQ_ID_1.1_READER} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135742.0x00000c/view/194.66.226.95/reader

${RAQ_ID_1.2_PUBLIC} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135726.0x00002e/view/194.66.238.27/public
${RAQ_ID_1.2_STAFF} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135726.0x00002e/view/194.66.238.27/staff
${RAQ_ID_1.2_READER} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135726.0x00002e/view/194.66.226.95/reader

${RAQ_ID_1.3_PUBLIC} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135726.0x000030/view/194.66.238.27/public
${RAQ_ID_1.3_STAFF} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135726.0x000030/view/194.66.238.27/staff
${RAQ_ID_1.3_READER} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135726.0x000030/view/194.66.226.95/reader

#${RAQ_ID_2.1_PUBLIC} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135726.0x000030/view/194.66.238.27/public
#${RAQ_ID_2.1_STAFF} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135726.0x000030/view/194.66.238.27/public
#${RAQ_ID_2.1_READER} =  http://v12l-uvsit-pre1/SADM/Playlist/ark:/81055/tvdc_100005135726.0x000030/view/194.66.226.95/public

${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}

${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}

${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}

${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}

${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}

${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}

${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}

${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}

${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}
${RAQ_ID_2.1_READER}



