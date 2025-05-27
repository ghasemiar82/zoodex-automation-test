*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Discounts Desktop
    Sleep     3s
    Close Desktop Modal
    Login User desktop
    Execute Javascript    window.scrollBy(0, 1000)
    ${discount_code}=    Get Text    ${tf_discount_code}
    Sleep    1s
    Wait Until Element Is Visible    ${discount_vendor}    ${timeout}
    Click Element    ${discount_vendor}
    Sleep    1s
    Wait Until Element Is Visible    ${discounted_vendor_menu}    ${timeout}
    Click Element    ${discounted_vendor_menu}
    Sleep    2s
    Wait Until Element Is Visible    ${discounted_vendor_add_item}    ${timeout}
    Click Element    ${discounted_vendor_add_item}
    Sleep    2s

    ${found}=    Run Keyword And Return Status    Element Should Contain    ${delivery_time}    زمان تحویل

    IF    ${found}
        Wait Until Element Is Visible    ${time_1}    ${timeout}
        Click Element    ${time_1}
        Sleep    2s
        
        Wait Until Element Is Visible    ${submit_pre_order_b}    ${timeout}
        Click Element    ${submit_pre_order_b}
        Sleep    2s

        Wait Until Element Is Visible    ${discounted_vendor_add_item}    ${timeout}
        Click Element    ${discounted_vendor_add_item}
        Sleep    2s
    END
    Wait Until Element Is Visible    ${cart_b}    ${timeout}
    Click Element    ${cart_b}
    Sleep    2s
    Wait Until Element Is Visible    ${continue_shoping}    ${timeout}
    Click Element    ${continue_shoping}
    Sleep    1s
    Wait Until Element Is Visible    ${addres_num_1}    ${timeout}
    Click Element    ${addres_num_1}
    Sleep    2s
    Execute Javascript    window.scrollBy(0, 600)
    Wait Until Element Is Visible    ${tf_discount}    ${timeout}
    Input Text    ${tf_discount}    ${discount_code}
    Sleep    1s
    Wait Until Element Is Visible    ${enter_discount}    ${timeout}
    Click Element    ${enter_discount}
    Sleep    3s