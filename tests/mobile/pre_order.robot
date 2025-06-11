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
Pre Order Mobile
    Close Mobile Modal
    Login User Mobile
    
    Scroll Element Into View    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran}
    Click Element When Ready    ${pre_order_b}
    Click Element When Ready    ${pre_order_check_box}

    Click Element When Ready    ${to_day}
    Sleep    2s
    Select Available Time Slots

    Click Element When Ready    ${tomarow}
    Select Available Time Slots

    Click Element When Ready    ${submit_pre_order_b}
    Click Element When Ready    ${kabab_khoran_menu_1}
    Sleep    1s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Sleep    1s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Click Element When Ready    ${m_add_item}
    Click Element When Ready    ${m_cart_b}
    Click Element When Ready    ${continue_shoping}
    Click Element When Ready    ${addres_num_1}

*** Keywords ***
Select Available Time Slots
    [Documentation]    Clicks on a series of available time slots inside a loop.
    FOR    ${i}    IN RANGE    1    7

        Click Element    //*[@id="__nuxt"]/div[15]/div[2]/div/div[3]/section[2]/div[2]/div[${i}]/label

    END