*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile        
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Profile Sctions Mobile
    Sleep     3s
    Close Mobile Modal
    Wait Until Element Is Visible    ${m_login_B}    ${timeout}
    Click Element    ${m_login_B}
    Sleep    1s
    Login User Mobile
    Wait Until Element Is Visible    ${profile}    ${timeout}
    Click Element    ${profile}
    Sleep    1s