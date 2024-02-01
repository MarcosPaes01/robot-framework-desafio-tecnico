*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Keywords ***
        
Login With Credentials
    [Arguments]    ${type}

    Input Text      locator=id:user-name       text=${USERNAME}

    IF  '${type}' == 'Valid'
        Input Text      locator=id:password        text=${PASSWORD}
    ELSE IF  '${type}' == 'Invalid'
        Input Text      locator=id:password        text=wrong_pass
    END
    
    Click Button    locator=id:login-button

Login is successful
    [Documentation]    If login is been done this element will be present

    Page Should Contain Element    locator=id:header_container


The error message is displayed

    [Documentation]    If login is not been done this element will be present

    Page Should Not Contain Element    locator=id:header_container