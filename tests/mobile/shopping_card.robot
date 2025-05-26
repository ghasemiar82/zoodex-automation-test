*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile        
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
shopping Cart Desktop
    Close Mobile Modal
    Wait Until Element Is Visible    ${m_category_1}    ${timeout}
    Click Element    ${m_category_1}
    Wait Until Element Is Visible    ${m_vendor}    ${timeout}
    Click Element    ${m_vendor}
    Sleep    2s
    Wait Until Element Is Visible    ${m_menu_1}    ${timeout}
    Click Element    ${m_menu_1}
    Sleep    3s
    Wait Until Element Is Visible    ${m_add_item}    ${timeout}
    Click Element    ${m_add_item}
    Sleep    2s
    Wait Until Element Is Visible    ${m_cart_b}    ${timeout}
    Click Element    ${m_cart_b}
    Wait Until Element Is Visible    ${m_food_num}