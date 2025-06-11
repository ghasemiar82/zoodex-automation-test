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
Orders Mobile
    Close Mobile Modal
    Login User Mobile
    
    Navigate To Order History
    View First Order And Return
    Re-order And Verify Cart

*** Keywords ***
Navigate To Order History
    [Documentation]    Navigates from the home page to the main order history page.
    Click Element When Ready    ${orders_b}

View First Order And Return
    [Documentation]    Clicks to see the details of the first order and then returns.
    Click Element When Ready    ${see_order_b}
    Sleep    2s
    Click Element When Ready    ${go_back}

Re-order And Verify Cart
    [Documentation]    Clicks 'order again', goes to the cart, and verifies an item is there.
    Click Element When Ready    ${order_again_b}
    Click Element When Ready    ${m_cart_b}
    Click Element When Ready    ${cart_trash}
    Sleep    3s
    Click Element When Ready    ${delete_all_cart}

# --- Keyword کمکی و سطح پایین ---

Click Element When Ready
    [Documentation]    A robust keyword that waits for an element to be ready and then clicks it.
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Wait Until Element Is Enabled    ${locator}    ${timeout}
    Click Element    ${locator}