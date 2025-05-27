*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser
Test Setup        Go To Zoodex Mobile
Test Teardown     Capture Page Screenshot
Suite Teardown    Close All Browsers

*** Test Cases ***
Explore Mobile
    Sleep     3s
    Close Mobile Modal
    Wait Until Element Is Visible    ${nav_explore_b}    ${timeout}
    Click Element    ${nav_explore_b}
    Sleep    2s
    Wait Until Element Is Visible    ${explore_filter_offers_coupon}    ${timeout}
    Click Element    ${explore_filter_offers_coupon}
    Sleep    2s
    Wait Until Element Is Visible    ${first_discount_coupon_b}    ${timeout}
    Click Element    ${first_discount_coupon_b}
    Sleep    2s
    Wait Until Element Is Visible    ${explore_filter_foodparty}    ${timeout}
    Click Element    ${explore_filter_foodparty}
    Sleep    2s
    Wait Until Element Is Visible    ${explore_foodparty_first_item_add}    ${timeout}
    Click Element    ${explore_foodparty_first_item_add}
    Sleep    2s
    Wait Until Element Is Visible    ${explore_foodparty_second_item_add}    ${timeout}
    Click Element    ${explore_foodparty_second_item_add}
    Sleep    2s
    Wait Until Element Is Visible    ${explore_filter_offers}    ${timeout}
    Click Element    ${explore_filter_offers}
    Sleep    2s
    Wait Until Element Is Visible    ${explore_offers_vendor_first}    ${timeout}
    Click Element    ${explore_offers_vendor_first}
    Sleep    2s
    Wait Until Element Is Visible    ${vendor_details_go_back}    ${timeout}
    Click Element    ${vendor_details_go_back}
    Sleep    2s
    Wait Until Element Is Visible    ${explore_offers_vendor_second}    ${timeout}
    Click Element    ${explore_offers_vendor_second}
    Sleep    2s