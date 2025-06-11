*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/desktop_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Browser
Test Setup        Go To Zoodex
Test Teardown     Capture Page Screenshot
Suite Teardown    Close All Browsers

*** Test Cases ***
Favorites Desktop
    Close Desktop Modal
    Login User desktop
    
    Scroll Element Into View    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran}
    Click Element When Ready    ${like}
    Click Element When Ready    ${menu_1}
    Click Element When Ready    ${chelo_zaferani}
    Click Element When Ready    ${like_product}
    Click Element When Ready    ${product_details_close}
    Click Element When Ready    ${profile_b}
    Click Element When Ready    ${profile}
    Click Element When Ready    ${favorites}
    Element Should Not Be Visible    ${like_none}
    Click Element When Ready    ${tab_2_favorites}
    Element Should Not Be Visible    ${like_none}

    Click Element When Ready    ${logo}
    Scroll Element Into View    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran}
    Click Element When Ready    ${like}
    Click Element When Ready    ${menu_1}
    Click Element When Ready    ${chelo_zaferani}
    Click Element When Ready    ${like_product}
    Click Element When Ready    ${product_details_close}
