*** Settings ***
Library           SeleniumLibrary
Library           auto_metamask
Library           Process
Library           Collections

*** Variables ***
${browser}       Chrome
${url}           chrome-extension://nkbihfbeogaeaoehlefnkodbefgpgknn/home.html#onboarding/welcome

*** Test Cases ***
Open Chrome with extension
${Settings}     Setup Webdriver     ${CURDIR}/extension_10_26_1_0.crx
Create Webdriver    chrome://extensions/        Chrome    desired_capabilities=${Settings}
Go to     ${url}
Maximize Browser Window
