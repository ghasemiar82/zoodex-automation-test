*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers
*** Test Cases ***
Vendor Search Mobile
    Close Mobile Modal
    Wait Until Element Is Visible    ${kabab_khoran}    ${timeout}
    Click Element    ${kabab_khoran}
    Sleep    1s
    Wait Until Element Is Visible    ${kabab_khoran_search_b}    ${timeout}
    Click Element    ${kabab_khoran_search_b}
    Wait Until Element Is Visible    ${kabab_khoran_search_input}    ${timeout}
    Input Text    ${kabab_khoran_search_input}    ${kabab_khoran_search_text}
    Sleep    3s
    Wait Until Element Is Visible    ${kabab_khoran_search_input}    ${timeout}
    Input Text    ${kabab_khoran_search_input}    ${search_word}
    Sleep    3s
    Wait Until Element Is Visible    ${kabab_khoran_search_back}    ${timeout}
    Click Element    ${kabab_khoran_search_back}
    Sleep    1s