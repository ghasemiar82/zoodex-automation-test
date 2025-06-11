*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/mobile_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile        
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers
Test Tags    important

*** Test Cases ***
Vendor Menu Filters Mobile
    Close Mobile Modal

    Scroll Element Into View    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran}
    Sleep    1s
    Execute Javascript    window.scrollBy(0,300)
    Apply All Vendor Filters
    Apply All Vendor Filters

*** Keywords ***
Apply All Vendor Filters
    [Documentation]    Clicks through the main vendor page filters in sequence.
    
    Click Element When Ready    ${filter_best_selling}
    Click Element When Ready    ${filter_new}
    Click Element When Ready    ${discounted}