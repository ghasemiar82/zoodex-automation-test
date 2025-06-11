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
Discounts Mobile
    Close Mobile Modal
    Login User Mobile
    ${discount_code}=    Find And Store Discount Code
    Add Item From Discounted Vendor
    Handle Pre-Order If Present
    Proceed Through Checkout To Discount Field
    Apply Discount Code    ${discount_code}
    Click Element When Ready    ${go_back}
    Click Element When Ready    ${cart_trash}
    Click Element When Ready    ${delete_all_cart}

*** Keywords ***
Find And Store Discount Code
    [Documentation]    Navigates to the explore page and gets the first discount code text.
    Click Element When Ready    ${explore}
    Wait Until Element Is Visible    ${tf_discount_code}    ${timeout}
    ${code_}=    Get Text    ${tf_discount_code}
    RETURN    ${code_}

Add Item From Discounted Vendor
    [Documentation]    Navigates to the discounted vendor and adds an item to the cart.
    Click Element When Ready    ${discount_vendor}
    Click Element When Ready    ${discount_vendor_menu_1}
    Sleep    1s
    Click Element When Ready    ${discount_vendor_menu_1}
    Sleep    1s
    Click Element When Ready    ${discount_vendor_menu_1}
    Click Element When Ready    ${discounted_vendor_add_item}

Handle Pre-Order If Present
    [Documentation]    Checks if the pre-order flow is present and completes it.
    ${found}=    Run Keyword And Return Status    Element Should Be Visible    ${delivery_time}
    IF    ${found}
        Click Element When Ready    ${to_day}
        Click Element When Ready    ${time_1}
        Click Element When Ready    ${submit_pre_order_b}
        Click Element When Ready    ${discounted_vendor_add_item}
    END

Proceed Through Checkout To Discount Field
    [Documentation]    Navigates from the cart page to the address and discount input page.
    Click Element When Ready    ${m_cart_b}
    Click Element When Ready    ${continue_shoping}
    Click Element When Ready    ${addres_num_1}
    ${found2}=    Run Keyword And Return Status    Element Should Be Visible    ${bad_weather}    ${timeout}

    IF    ${found2}
        Click Element When Ready    ${bad_weather}
    END
    Scroll Element Into View       ${tf_discount}

Apply Discount Code
    [Documentation]    Inputs the provided discount code and submits it.
    [Arguments]    ${code_to_apply}
    Input Text Into Field       ${tf_discount}        ${code_to_apply}
    Execute Javascript  window.scrollTo(0, document.body.scrollHeight)
    Click Element When Ready    ${enter_discount}
    Wait Until Element Is Visible    ${discount_applied_message}    ${timeout}

Input Text Into Field
    [Documentation]    A robust keyword that clears a field and inputs new text.
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Clear Element Text    ${locator}
    Input Text    ${locator}    ${text}