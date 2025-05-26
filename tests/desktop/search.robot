*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Orders Desktop
    Close Desktop Modal
    Wait Until Element Is Visible    ${search_bar}    ${timeout}
    Input Text    ${search_bar}    ${search_word}
    Sleep    3s
    Wait Until Element Is Visible    ${first_search_result}    ${timeout}
    Click Element    ${first_search_result}
    Sleep    2s
    Wait Until Element Is Visible    ${search_bar}    ${timeout}
    Click Element    ${clear_text_b}
    Sleep    1s
    Wait Until Element Is Visible    ${search_bar}    ${timeout}
    Input Text    ${search_bar}    ${search_word_2}
    Sleep    3s
    Wait Until Element Is Visible    ${first_search_result_2}    ${timeout}
    Click Element    ${first_search_result_2}
    Sleep    2s
    Wait Until Element Is Visible    ${continue_order_b}    ${timeout}
    Click Element    ${continue_order_b}
    Sleep    2s