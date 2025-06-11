*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/desktop_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Browser
Test Setup        Go To Zoodex
Test Teardown     Capture Page Screenshot
Suite Teardown    Close All Browsers

*** Test Cases ***
Orders Desktop
    Close Desktop Modal
    Login User desktop
    
    Click Element When Ready    ${profile_b}
    Click Element When Ready    ${orders_b}
    Click Element When Ready    ${see_order_b}
    Click Element When Ready    ${see_order_back}
    Click Element When Ready    ${order_again_b}
    Click Element When Ready    ${cart_b}
    Click Element When Ready    ${cart_trash}
    Click Element When Ready    ${delete_all_cart}