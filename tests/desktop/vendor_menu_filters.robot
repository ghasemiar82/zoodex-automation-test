*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/desktop_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Browser
Test Setup        Go To Zoodex
Test Teardown     Capture Page Screenshot
Suite Teardown    Close All Browsers

*** Test Cases ***
Vendor Menu Filters Desktop
    Close Desktop Modal
    Scroll Element Into View    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran}
    
    Apply All Vendor Filters
    Apply All Vendor Filters

*** Keywords ***
Apply All Vendor Filters
    [Documentation]    Clicks through the main vendor page filters in sequence.
    
    Click Element When Ready    ${filter_best_selling}
    Click Element When Ready    ${filter_new}
    Click Element When Ready    ${discounted}