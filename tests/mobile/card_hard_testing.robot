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
Hard Cart Testing Mobile
    Close Mobile Modal
    Scroll Element Into View    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran}
    Click Element When Ready    ${m_menu_1}
    Sleep    1s
    Click Element When Ready    ${m_menu_1}
    Sleep    1s
    Click Element When Ready    ${m_menu_1}
    Click Element When Ready    ${m_add_item}
    Sleep    2s
    ${found}=    Run Keyword And Return Status    Element Should Contain    ${delivery_time}    زمان تحویل
    IF    ${found}
        Click Element When Ready    ${time_1}
        Click Element When Ready    ${submit_pre_order_b}
    END
    Perform Cart Stability Check
    Click Element When Ready    ${m_cart_b}
    Click Element When Ready    ${cart_trash}
    Click Element When Ready    ${delete_all_cart}

*** Keywords ***
Perform Cart Stability Check
    [Documentation]    Opens and closes the cart multiple times to stress test its stability.

    FOR    ${i}    IN RANGE    1    10
        Click Element When Ready    ${m_cart_b}
        Click Element When Ready    ${close_cart}
    END