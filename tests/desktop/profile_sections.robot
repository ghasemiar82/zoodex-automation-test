*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Profile Sctions Desktop
    Sleep     3s
    Close Desktop Modal
    Login User desktop
    Wait Until Element Is Visible    ${profile_b}    ${timeout}
    Click Element    ${profile_b}
    Sleep    1s
    Wait Until Element Is Visible    ${profile}    ${timeout}
    Click Element    ${profile}
    Sleep    1s