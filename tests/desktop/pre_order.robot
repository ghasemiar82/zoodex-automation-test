*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/desktop_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Pre Order Desktop
    Close Desktop Modal
    Login User desktop
    
    Scroll Element Into View    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran}
    Click Element When Ready    ${pre_order_b}
    Click Element When Ready    ${pre_order_check_box}

    Click Element When Ready    ${to_day}
    Select Available Time Slots

    Click Element When Ready    ${tomarow}
    Select Available Time Slots

    Click Element When Ready    ${submit_pre_order_b}
    Click Element When Ready    ${menu_1}
    Click Element When Ready    ${add_item}
    Click Element When Ready    ${cart_b}
    Click Element When Ready    ${continue_shoping}
    Click Element When Ready    ${addres_num_1}
    Click Element When Ready    ${cart_trash}
    Click Element When Ready    ${delete_all_cart}
*** Keywords ***
Select Available Time Slots
    [Documentation]    Clicks on a series of available time slots inside a loop.
    FOR    ${i}    IN RANGE    1    4
        Click Element    //*[@id="__nuxt"]/div[4]/div/section[2]/div[2]/div[${i}]/div/label/span
    END