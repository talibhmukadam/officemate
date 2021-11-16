*** Settings ***
Library  Selenium2Library
Library  RequestsLibrary

*** Variables ***
${HOMEPAGE}  https://www.officemate.co.th/en
${BROWSER}  Chrome

*** Keywords ***
start browser
  Open Browser  ${HOMEPAGE}  ${BROWSER}
  MAXIMIZE BROWSER WINDOW



