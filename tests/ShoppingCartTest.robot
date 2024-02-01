*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

Resource    ../resources/pages/BasePage.robot
Resource    ../resources/pages/ShoppingCartPage.robot

Test Teardown    Close Browser
Force Tags       cart

*** Test Cases ***

Add a product to a cart successfully
    [Tags]    happyPath

    Given User access the platform
    When Add product to cart
    Then Element should be add to cart

Remove product from the cart successfully
    [Tags]    alternativePath

    Given User access the platform
    When Add product to cart
    And Remove all products from the cart
    Then The cart should be empty
