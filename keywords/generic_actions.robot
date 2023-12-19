*** Settings ***

Library    SeleniumLibrary
Resource   ../variables/var_common.robot

*** Keywords ***

Navigate To Page
    [Documentation]  Navigates to the desired page
    [Arguments]  ${url}=${None}  ${browser}=${None}

    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window

Click On Element
    [Documentation]  Keyword responsible for the function of clicking on an element and waiting for the element to be visible.
    [Arguments]  ${locator}    ${timeout}=${PAGE_LOAD_TIMEOUT_MILISEC}

    Wait Until Element Is Visible     ${locator}    timeout=${timeout}
    Click Element     ${locator}

Input Text On Field
    [Documentation]  Keyword responsible for insert a text on a field
    [Arguments]  ${locator}  ${text}  ${clear}=True

    Click On Element  ${locator}
    Input Text    ${locator}    ${text}    ${clear}