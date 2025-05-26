*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile      
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Parallel Universe Mobile
    Sleep     3s
    Close Mobile Modal
    Execute Javascript    window.scrollBy(0, 100)
    Wait Until Element Is Visible    ${lets_go}    ${timeout}
    Click Element    ${lets_go}
    Sleep    1s
    Login User Mobile
    Wait Until Element Is Visible    ${pu_mid_b}    ${timeout}
    Click Element    ${pu_mid_b}
    Sleep    3s
    Wait Until Element Is Visible    ${pu_back}    ${timeout}
    Click Element    ${pu_back}
    Sleep    1s
    Wait Until Element Is Visible    ${pu_right_b}    ${timeout}
    Click Element    ${pu_right_b}
    Sleep    3s
    Wait Until Element Is Visible    ${pu_back}    ${timeout}
    Click Element    ${pu_back}
    Sleep    1s
    Wait Until Element Is Visible    ${pu_left_b}    ${timeout}
    Click Element    ${pu_left_b}
    Sleep    3s
    Wait Until Element Is Visible    ${pu_back}    ${timeout}
    Click Element    ${pu_back}
    Sleep    1s