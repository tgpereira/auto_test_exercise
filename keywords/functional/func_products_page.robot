*** Settings ***

Library    SeleniumLibrary

Resource    ../generic_actions.robot
Resource    ../../variables/var_products_page.robot

*** Keywords ***
Search For Product
    [Documentation]    Search for a product
    [Arguments]    ${product}

    Input Text On Field    ${SEARCH_BAR}    ${product}
    Click On Element    ${SEARCH_BUTTON}

Add Product To Cart
    [Documentation]    Add product to cart
    
    Sleep    1s
    Scroll Element Into View    ${PAGE_FOOTER} 
    Mouse Over    ${ADD_TO_CART_BUTTON}
    Click On Element    ${ADD_TO_CART_HOVER_BUTTON}
    Click On Element    ${CONFIRMATION_MODAL_BUTTON}

Search And Add Product To Cart
    [Documentation]    Search and add product to cart based on quantity
    [Arguments]    ${product}    ${quantity}
    
    Search For Product  ${product}
    Repeat Keyword   ${quantity} times    Add Product To Cart
    