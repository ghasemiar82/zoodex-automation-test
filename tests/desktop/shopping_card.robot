*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
shopping Cart Desktop
    Close Desktop Modal
    Wait Until Element Is Visible    ${category_1}    ${timeout}
    Click Element    ${category_1}
    Wait Until Element Is Visible    ${vendor}    ${timeout}
    Click Element    ${vendor}
    Wait Until Element Is Visible    ${menu_1}    ${timeout}
    Click Element    ${menu_1}
    Sleep    2s
    Wait Until Element Is Visible    ${add_item}    ${timeout}
    Click Element    ${add_item}
    Sleep    2s
    Wait Until Element Is Visible    ${cart_b}    ${timeout}
    Click Element    ${cart_b}
    Wait Until Element Is Visible    ${food_num}