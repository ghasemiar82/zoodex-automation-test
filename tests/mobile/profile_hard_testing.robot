*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/mobile_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile       
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers
Test Tags    hard

*** Test Cases ***
Search Cart Testing Mobile
    Close Mobile Modal
    
    FOR    ${i}    IN RANGE    1    20
        Log To Console    Performing navigation stability check: Cycle ${i}
        Perform Navigation Cycle
    END

*** Keywords ***
Perform Navigation Cycle
    [Documentation]    Performs one full cycle of navigating through main app sections.
    Click Element When Ready    ${m_login_B}
    Click Element When Ready    ${m_cart_b}
    Click Element When Ready    ${close_cart}
    Click Element When Ready    ${home}
    Click Element When Ready    ${explore}
    Click Element When Ready    ${orders_b}