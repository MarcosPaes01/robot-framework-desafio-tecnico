*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem


*** Variables ***
${BROWSER}        Chrome
${URL}            https://www.saucedemo.com/


*** Keywords ***
User access the login page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
