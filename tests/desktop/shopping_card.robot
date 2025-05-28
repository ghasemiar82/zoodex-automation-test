*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
shopping Cart Desktop
    Close Desktop Modal
    Execute Javascript    window.scrollBy(0, 500)
    Wait Until Element Is Visible    ${kabab_khoran}    ${timeout}
    Click Element    ${kabab_khoran}
    Sleep    1s
    Wait Until Element Is Visible    ${menu_1}    ${timeout}
    Click Element    ${menu_1}
    Sleep    2s
    Wait Until Element Is Visible    ${add_item}    ${timeout}
    Click Element    ${add_item}
    Sleep    2s
    ${found}=    Run Keyword And Return Status    Element Should Contain    ${delivery_time}    زمان تحویل

    IF    ${found}
        Wait Until Element Is Visible    ${time_1}    ${timeout}
        Click Element    ${time_1}
        Sleep    2s
        
        Wait Until Element Is Visible    ${submit_pre_order_b}    ${timeout}
        Click Element    ${submit_pre_order_b}
        Sleep    2s

        Wait Until Element Is Visible    ${add_item}    ${timeout}
        Click Element    ${add_item}
        Sleep    2s
    END
    Wait Until Element Is Visible    ${cart_b}    ${timeout}
    Click Element    ${cart_b}
    Wait Until Element Is Visible    ${food_num}