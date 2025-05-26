*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Pre Order Desktop
    Close Desktop Modal
    Login User desktop
    Execute Javascript    window.scrollBy(0, 500)
    Wait Until Element Is Visible    ${kabab_khoran}    ${timeout}
    Click Element    ${kabab_khoran}
    Sleep    1s
    Wait Until Element Is Visible    ${pre_order_b}    ${timeout}
    Click Element    ${pre_order_b}
    Sleep    1s
    Wait Until Element Is Visible    ${to_day}    ${timeout}
    Click Element    ${to_day}
    Sleep    1s
    FOR    ${i}    IN RANGE   1    4
        Click Element    //*[@id="__nuxt"]/div[4]/div/section[2]/div[2]/div[${i}]/div/label/span
        Sleep    1s
    END
    Wait Until Element Is Visible    ${tomarow}    ${timeout}
    Click Element    ${tomarow}
    Sleep    1s
    FOR    ${i}    IN RANGE   1    4
        Click Element    //*[@id="__nuxt"]/div[4]/div/section[2]/div[2]/div[${i}]/div/label/span
        Sleep    1s
    END
    Wait Until Element Is Visible    ${submit_pre_order_b}    ${timeout}
    Click Element    ${submit_pre_order_b}
    Sleep    1s
    Wait Until Element Is Visible    ${menu_1}    ${timeout}
    Click Element    ${menu_1}
    Sleep    2s
    Wait Until Element Is Visible    ${chelo_zaferani_+}    ${timeout}
    Click Element    ${chelo_zaferani_+}
    Sleep    1s
    Wait Until Element Is Visible    ${cart_b}    ${timeout}
    Click Element    ${cart_b}
    Sleep    1s
    Wait Until Element Is Visible    ${continue_shoping}    ${timeout}
    Click Element    ${continue_shoping}
    Sleep    2s
    Wait Until Element Is Visible    ${addres_num_1}    ${timeout}
    Click Element    ${addres_num_1}
    Sleep    1s
    Wait Until Element Is Visible    ${pre_order_logo}    ${timeout}
    
    

    
    
