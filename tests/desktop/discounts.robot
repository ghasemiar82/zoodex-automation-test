*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/desktop_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Browser
Test Setup        Go To Zoodex
Test Teardown     Capture Page Screenshot
Suite Teardown    Close All Browsers

*** Test Cases ***
Discounts Desktop
    Close Desktop Modal
    Login User desktop
    
    Scroll Element Into View    ${discount_vendor}
    Wait Until Element Is Visible    ${tf_discount_code}    ${timeout}
    ${discount_code}=    Get Text    ${tf_discount_code}
    
    Click Element When Ready    ${discount_vendor}
    Click Element When Ready    ${discounted_vendor_menu}
    Click Element When Ready    ${discounted_vendor_add_item}

    ${found}=    Run Keyword And Return Status    Element Should Contain    ${delivery_time}    زمان تحویل

    IF    ${found}
        Click Element When Ready    ${time_1}
        Click Element When Ready    ${submit_pre_order_b}
    END
    
    Click Element When Ready    ${cart_b}
    Click Element When Ready    ${continue_shoping}
    Click Element When Ready    ${addres_num_1}
    
    ${found2}=    Run Keyword And Return Status    Element Should Be Visible    ${bad_weather}    ${timeout}

    IF    ${found2}
        Click Element When Ready    ${bad_weather}
    END
    
    Scroll Element Into View    ${tf_discount}
    Wait Until Element Is Visible    ${tf_discount}    ${timeout}
    Input Text    ${tf_discount}    ${discount_code}
    
    Click Element When Ready    ${enter_discount}
    Click Element When Ready    ${cart_trash}
    Click Element When Ready    ${delete_all_cart}

