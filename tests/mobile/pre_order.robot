*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Pre Order Mobile
    Close Mobile Modal
    Wait Until Element Is Visible    ${m_login_B}    ${timeout}
    Click Element    ${m_login_B}
    Login User Mobile
    Execute Javascript    window.scrollBy(0, 500)
    Wait Until Element Is Visible    ${kabab_khoran}    ${timeout}
    Click Element    ${kabab_khoran}
    Sleep    1s
    Wait Until Element Is Visible    ${pre_order_b}    ${timeout}
    Click Element    ${pre_order_b}
    Sleep    1s
    Wait Until Element Is Visible    ${pre_order_check_box}    ${timeout}
    Click Element    ${pre_order_check_box}
    Sleep    1s
    Wait Until Element Is Visible    ${to_day}    ${timeout}
    Click Element    ${to_day}
    Sleep    1s
    FOR    ${i}    IN RANGE   1    7
        Click Element    //*[@id="__nuxt"]/div[4]/div/section[2]/div[2]/div[${i}]/label
        Sleep    1s
    END
    Wait Until Element Is Visible    ${tomarow}    ${timeout}
    Click Element    ${tomarow}
    Sleep    1s
    FOR    ${i}    IN RANGE   1    7
        Click Element    //*[@id="__nuxt"]/div[4]/div/section[2]/div[2]/div[${i}]/label
        Sleep    1s
    END
    Wait Until Element Is Visible    ${submit_pre_order_b}    ${timeout}
    Click Element    ${submit_pre_order_b}
    Sleep    1s
    Wait Until Element Is Visible    ${kabab_khoran_menu_1}    ${timeout}
    Click Element    ${kabab_khoran_menu_1}
    Sleep    2s
    Wait Until Element Is Visible    ${m_add_item}    ${timeout}
    Click Element    ${m_add_item}
    Sleep    1s
    Wait Until Element Is Visible    ${m_cart_b}    ${timeout}
    Click Element    ${m_cart_b}
    Sleep    1s
    Wait Until Element Is Visible    ${continue_shoping}    ${timeout}
    Click Element    ${continue_shoping}
    Sleep    2s
    Wait Until Element Is Visible    ${addres_num_1}    ${timeout}
    Click Element    ${addres_num_1}
    Sleep    1s
    

    
    
