*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/desktop_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Browser
Test Setup        Go To Zoodex
Test Teardown     Capture Page Screenshot
Suite Teardown    Close All Browsers

*** Test Cases ***
shopping Cart Desktop
    Close Desktop Modal
    Scroll Element Into View    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran}
    Click Element When Ready    ${menu_1}
    Click Element When Ready    ${add_item}

    ${found}=    Run Keyword And Return Status    Element Should Contain    ${delivery_time}    زمان تحویل

    IF    ${found}
        Click Element When Ready    ${time_1}
        Click Element When Ready    ${submit_pre_order_b}
        Click Element When Ready    ${add_item}
    END
    
    Click Element When Ready    ${cart_b}
    
    Wait Until Element Is Visible    ${food_num}
    Click Element When Ready    ${cart_trash}
    Click Element When Ready    ${delete_all_cart}
