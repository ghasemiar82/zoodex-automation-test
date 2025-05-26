*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Orders Mobile
    Close Mobile Modal
    Wait Until Element Is Visible    ${search_bar}    ${timeout}
    Click Element    ${search_bar}
    Sleep    1s
    Wait Until Element Is Visible    ${search_bar_2}    ${timeout}
    Input Text    ${search_bar_2}    ${search_word}
    Sleep    3s
    Wait Until Element Is Visible    ${first_search_result}    ${timeout}
    Click Element    ${first_search_result}
    Sleep    2s
    Wait Until Element Is Visible    ${back_to_search}    ${timeout}
    Click Element    ${back_to_search}
    Sleep    1s
    Wait Until Element Is Visible    ${search_bar_2}    ${timeout}
    Clear Element Text    ${search_bar_2}
    Sleep    1s
    Wait Until Element Is Visible    ${search_bar_2}    ${timeout}
    Input Text    ${search_bar_2}    ${search_word_2}
    Sleep    3s
    Wait Until Element Is Visible    ${first_search_result_2}    ${timeout}
    Click Element    ${first_search_result_2}
    Sleep    2s
    Wait Until Element Is Visible    ${continue_order_b}    ${timeout}
    Click Element    ${continue_order_b}
    Sleep    2s