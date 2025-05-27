*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser
Test Setup        Go To Zoodex
Test Teardown     Capture Page Screenshot
Suite Teardown    Close All Browsers
*** Test Cases ***
Vendor Search Desktop
    Close Desktop Modal
    Wait Until Element Is Visible    ${kabab_khoran}    ${timeout}
    Click Element    ${kabab_khoran}
    Wait Until Element Is Visible    ${kabab_khoran_search_input}    ${timeout}
    Input Text    ${kabab_khoran_search_input}    ${kabab_khoran_search_text}
    Sleep    3s
    Wait Until Element Is Visible    ${kabab_khoran_search_input}    ${timeout}
    Input Text    ${kabab_khoran_search_input}    ${search_word}
    Sleep    3s