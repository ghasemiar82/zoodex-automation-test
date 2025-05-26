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
    Login User desktop
    Wait Until Element Is Visible    ${profile_b}    ${timeout}
    Click Element    ${profile_b}
    Sleep    1s
    Wait Until Element Is Visible    ${orders_b}    ${timeout}
    Click Element    ${orders_b}
    Sleep    1s
    Wait Until Element Is Visible    ${see_order_b}    ${timeout}
    Click Element    ${see_order_b}
    Sleep    1s
    Wait Until Element Is Visible    ${see_order_back}    ${timeout}
    Click Element    ${see_order_back}
    Sleep    1s
    Wait Until Element Is Visible    ${order_again_b}    ${timeout}
    Click Element    ${order_again_b}
    Sleep    1s
    Wait Until Element Is Visible    ${cart_b}    ${timeout}
    Click Element    ${cart_b}
    Sleep    2s
    Wait Until Element Is Visible    ${vendor_name}    ${timeout}
    Element Text Should Be    ${vendor_name}    ${qorbani}
    Sleep    1s
    