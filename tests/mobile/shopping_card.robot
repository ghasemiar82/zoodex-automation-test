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
Shopping Cart Mobile
    Close Mobile Modal
    
    Click Element When Ready    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran_menu_1}
    Sleep    1s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Sleep    1s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Click Element When Ready    ${m_add_item}
    Sleep    2s
    Handle Pre-Order If Present
    
    Click Element When Ready    ${m_cart_b}
    
    Wait Until Element Is Visible    ${m_food_num}
*** Keywords ***
Handle Pre-Order If Present
    [Documentation]    Checks if the pre-order dialog is present and completes the flow.
    
    ${found}=    Run Keyword And Return Status    Element Should Be Visible    ${delivery_time}
    IF    ${found}
        Click Element When Ready    ${time_1}
        Click Element When Ready    ${submit_pre_order_b}
    END