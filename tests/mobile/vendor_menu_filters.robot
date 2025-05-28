*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile        
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Vendor Menu Filters Mobile
    Sleep     3s
    Close Mobile Modal
    Execute Javascript    window.scrollBy(0, 500)
    Wait Until Element Is Visible    ${kabab_khoran}    ${timeout}
    Click Element    ${kabab_khoran}
    Sleep    1s
    Execute Javascript    window.scrollBy(0, 200)
    Wait Until Element Is Visible    ${filter_best_selling}    ${timeout}
    Click Element    ${filter_best_selling}
    Sleep    1s
    Wait Until Element Is Visible    ${filter_new}    ${timeout}
    Click Element    ${filter_new}
    Sleep    1s
    Wait Until Element Is Visible    ${discounted}    ${timeout}
    Click Element    ${discounted}
    Sleep    1s
    Wait Until Element Is Visible    ${filter_best_selling}    ${timeout}
    Click Element    ${filter_best_selling}
    Sleep    1s
    Wait Until Element Is Visible    ${filter_new}    ${timeout}
    Click Element    ${filter_new}
    Sleep    1s
    Wait Until Element Is Visible    ${discounted}    ${timeout}
    Click Element    ${discounted}
    Sleep    1s
   