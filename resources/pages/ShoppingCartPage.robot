*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

Resource    ../pages/BasePage.robot
Resource    ../pages/LoginPage.robot


*** Variables ***
${USERNAME}       standard_user
${PASSWORD}       secret_sauce
${PRODUCT_NAME}    

*** Keywords ***
User access the platform
    User access the login page
    Login With Credentials    Valid
    
Add product to cart
    [Documentation]    Click on the first element visible on page to add to cart
    
    Click Element        locator=xpath://*[contains(@id, 'add-to-cart')][1]
    

Remove all products from the cart
    [Documentation]    Remove the  products from the cart
    
    ${PRODUCT_NUMBERS}    Get Element Count    locator=xpath://*[contains(@id, 'remove')]

    FOR  ${i}  IN  ${PRODUCT_NUMBERS}
        Click Element        locator=xpath://*[contains(@id, 'remove')][${i}]
    END
    

Element should be add to cart

    [Documentation]    Check if the item has been added to the cart

    Click Element                  locator=id:shopping_cart_container
    Page Should Contain Element    locator=class:cart_item_label

The cart should be empty
    [Documentation]    Check if the cart is empty

    Click Element                  locator=id:shopping_cart_container
    Page Should Not Contain    locator=class:cart_item_label

