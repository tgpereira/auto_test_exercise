*** Settings ***

Library    SeleniumLibrary

Resource    ../generic_actions.robot
Resource    ../../variables/var_landing_page.robot

*** Keywords ***
Navigate To Landing Page
    [Documentation]    Opens Automation Execise Landing Page

    Navigate To Page    url=${BASE_URL}    browser=${BROWSER}

Select Main Menu Option
    [Documentation]    Selects one of the available options on the main menu.
    [Arguments]    ${main_menu_option}=${None}

    IF    "${main_menu_option.lower()}" == "home"
        Click Element    ${MENU_HOME}
    ELSE IF   "${main_menu_option.lower()}" == "products"
        Click Element    ${MENU_PRODUTS}
    ELSE IF    "${main_menu_option.lower()}" == "cart"
        Click Element    ${MENU_CART}
    ELSE IF    "${main_menu_option.lower()}" == "signup_login"
        Click Element    ${MENU_SIGNUP_LOGIN}
    ELSE IF    "${main_menu_option.lower()}" == "test_cases"
        Click Element    ${MENU_TEST_CASES}
    ELSE IF    "${main_menu_option.lower()}" == "api_testing"
        Click Element    ${MENU_API_TESTING}
    ELSE IF    "${main_menu_option.lower()}" == "video_tutorials"
        Click Element    ${MENU_VIDEO_TUTORIALS}
    ELSE IF    "${main_menu_option.lower()}" == "contact"
        Click Element    ${MENU_CONTACT}
    ELSE
        Fail    Invalid Menu Option. Valid options are
        ...     "home", "products", "cart", "signup_login", "test_cases", "api_testing", "video_tutorials", "contact"
    END
