*** Settings ***

Library    SeleniumLibrary

Resource    ../../variables/var_products_page.robot

*** Keywords ***
Validate Product Cart Details
    [Documentation]    Validate the product details in the cart page
    [Arguments]    ${product_quantity}    ${product_name}    ${product_price}

    ${product_card}=    Set Variable    //tr/td[@class="cart_description"]/h4/a[contains(text(),'${product_name}')]/ancestor::tr 
    ${total_price}=   evaluate    ${product_price} * ${product_quantity}

    ${status}=    Run Keyword And Return Status    Element Should Contain    ${product_card}/td[@class="cart_description"]/h4/a    ${product_name}
    Run Keyword If    ${status}    Run Keywords      
    ...    Element Should Contain    ${product_card}/td[@class="cart_price"]/p    ${product_price}
    ...    AND    Element Should Contain    ${product_card}/td[@class="cart_quantity"]/button    ${product_quantity}
    ...    AND    Element Should Contain    ${product_card}/td[@class="cart_total"]/p   ${total_price}
    ...    ELSE    Fail    ${product_name} is not visible in the cart