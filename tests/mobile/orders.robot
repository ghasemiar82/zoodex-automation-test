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
    Sleep     3s
    Close Mobile Modal
    Wait Until Element Is Visible    ${m_login_B}    ${timeout}
    Click Element    ${m_login_B}
    Login User Mobile
    Wait Until Element Is Visible    ${orders_b}    ${timeout}
    Click Element    ${orders_b}
    Sleep    1s
    Wait Until Element Is Visible    ${see_order_b}    ${timeout}
    Click Element    ${see_order_b}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${order_again_b}    ${timeout}
    Click Element    ${order_again_b}
    Sleep    6s
    Wait Until Element Is Visible    ${m_cart_b}    ${timeout}
    Click Element    ${m_cart_b}
    Sleep    2s