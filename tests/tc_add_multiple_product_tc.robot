*** Settings ***
Documentation     A test suite validating the cart functionality

Suite Setup    Navigate To Landing Page
Suite Teardown    Close All Browsers

Resource    ../keywords/functional/func_base_keywords.robot
Resource    ../keywords/functional/func_products_page.robot
Resource    ../keywords/validations/val_products.robot
Resource    ../keywords/validations/val_cart.robot

*** Test Cases ***
Test
    [Documentation]    Add multiple products to cart and validate the cart details
    [Tags]    Sanity

    Select Main Menu Option    Products
    Search For Product    Men Tshirt
    Validate Product Card    Men Tshirt    Rs. 400
    Add Product To Cart
    Search And Add Product To Cart    Blue Top    2
    Select Main Menu Option    Cart
    Validate Product Cart Details    2    Blue Top   500
    Validate Product Cart Details    1    Men Tshirt   400