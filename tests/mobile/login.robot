*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile      
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Login Mobile
    Sleep     3s
    Close Mobile Modal
    Wait Until Element Is Visible    ${m_login_B}    ${timeout}
    Click Element    ${m_login_B}
    Login User Mobile