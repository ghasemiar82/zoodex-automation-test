*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Vendor Menu Filters Desktop
    Sleep     3s
    Close Desktop Modal
    Execute Javascript    window.scrollBy(0, 500)
    Wait Until Element Is Visible    ${kabab_khoran}    ${timeout}
    Click Element    ${kabab_khoran}
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
    Wait Until Element Is Visible    ${all_filters}    ${timeout}
    Click Element    ${all_filters}
    Sleep    1s
    Wait Until Element Is Visible    ${discounted_b}    ${timeout}
    Click Element    ${discounted_b}
    Sleep    1s
    Wait Until Element Is Visible    ${filter_new_b}    ${timeout}
    Click Element    ${filter_new_b}
    Sleep    1s
    Wait Until Element Is Visible    ${filter_best_selling_b}    ${timeout}
    Click Element    ${filter_best_selling_b}
    Sleep    1s
    Wait Until Element Is Visible    ${delete_all_filters_b}    ${timeout}
    Click Element    ${delete_all_filters_b}
    Sleep    1s
    Wait Until Element Is Visible    ${filter_best_selling}    ${timeout}