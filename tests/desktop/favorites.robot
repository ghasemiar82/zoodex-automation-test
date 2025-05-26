*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Favorites Desktop
    Sleep     3s
    Close Desktop Modal
    Login User desktop
    Execute Javascript    window.scrollBy(0, 500)
    Wait Until Element Is Visible    ${kabab_khoran}    ${timeout}
    Click Element    ${kabab_khoran}
    Sleep    1s
    Wait Until Element Is Visible    ${like}    ${timeout}
    Click Element    ${like}
    Sleep    1s
    Wait Until Element Is Visible    ${menu_1}    ${timeout}
    Click Element    ${menu_1}
    Sleep    2s
    Wait Until Element Is Visible    ${chelo_zaferani}    ${timeout}
    Click Element    ${chelo_zaferani}
    Sleep    1s
    Wait Until Element Is Visible    ${like_product}    ${timeout}
    Click Element    ${like_product}
    Sleep    1s
    Wait Until Element Is Visible    ${close_modal}    ${timeout}
    Click Element    ${close_modal}
    Sleep    1s
    Wait Until Element Is Visible    ${profile_b}    ${timeout}
    Click Element    ${profile_b}
    Sleep    1s
    Wait Until Element Is Visible    ${profile}    ${timeout}
    Click Element    ${profile}
    Sleep    1s
    Wait Until Element Is Visible    ${favorites}    ${timeout}
    Click Element    ${favorites}
    Sleep    2s
    Wait Until Element Is Visible    ${tab_2_favorites}    ${timeout}
    Click Element    ${tab_2_favorites}
    Sleep    2s
    Wait Until Element Does Not Contain    ${not_have_favorites}    ${timeout}