*** Settings ***

Library    SeleniumLibrary

Resource    ../../variables/var_products_page.robot

*** Keywords ***
Validate Product Card
    [Documentation]    Validate product card data
    [Arguments]    ${product_name}    ${product_price}

    Element Should Be Visible    ${PRODUCT_CARD}
    Element Should Contain       ${PRODUCT_CARD_NAME}    ${product_name}
    Element Should Contain       ${PRODUCT_CARD_PRICE}    ${product_price}      
    