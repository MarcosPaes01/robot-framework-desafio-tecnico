*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

Resource    ../resources/pages/BasePage.robot
Resource    ../resources/pages/LoginPage.robot

Test Teardown    Close Browser
Force Tags       login

*** Test Cases ***

Login successfully
    [Tags]    happyPath

    Given User access the login page
    When Login With Credentials    Valid
    Then Login is successful

Login with a wrong credential - login
    [Tags]    alternativePath

    Given User access the login page
    When Login With Credentials    Invalid
    Then The error message is displayed 