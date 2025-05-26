*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile        
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Discounts Mobile
    Sleep     3s
    Close Mobile Modal
    Wait Until Element Is Visible    ${m_login_B}    ${timeout}
    Click Element    ${m_login_B}
    Login User Mobile
    Wait Until Element Is Visible    ${explore}    ${timeout}
    Click Element    ${explore}
    Sleep    5s
    Wait Until Element Is Visible    //*[@id="discounts"]/div/div[2]/div[2]/section[1]/span    ${timeout}
    ${discount_code}=    Get Text    //*[@id="discounts"]/div/div[2]/div[2]/section[1]/span
    Wait Until Element Is Visible    ${discount_vendor}    ${timeout}
    Click Element    ${discount_vendor}
    Sleep    1s
    Wait Until Element Is Visible    ${menu_div_1}    ${timeout}
    Click Element    ${menu_div_1}
    Sleep    2s
    Wait Until Element Is Visible    ${add_food_to_cart_for_discount_b}    ${timeout}
    Click Element    ${add_food_to_cart_for_discount_b}
    Sleep    3s
    ${found}=    Run Keyword And Return Status    Element Should Contain    //*[@id="__nuxt"]/div[15]/div[2]/div/div[1]/p[2]    زمان تحویل
    IF    ${found}
        Wait Until Element Is Visible    //*[@id="__nuxt"]/div[15]/div[2]/div/div[3]/section/div/div[1]    ${timeout}
        Click Element    //*[@id="__nuxt"]/div[15]/div[2]/div/div[3]/section/div/div[1]
        Sleep    2s
        Wait Until Element Is Visible    //*[@id="1404/03/03 19:00:00"]    ${timeout}
        Click Element    //*[@id="__nuxt"]/div[15]/div[2]/div/div[3]/section[2]/div[2]/div[1]/div/label/span
        Sleep    2s
        Wait Until Element Is Visible    //*[@id="__nuxt"]/div[15]/div[2]/div/div[3]/div[2]/button    ${timeout}
        Click Element    //*[@id="__nuxt"]/div[15]/div[2]/div/div[3]/div[2]/button
        Sleep    2s
        Wait Until Element Is Visible    ${add_food_to_cart_for_discount_b}    ${timeout}
        Click Element    ${add_food_to_cart_for_discount_b}
        Sleep    2s
    END
    Wait Until Element Is Visible    ${m_cart_b}    ${timeout}
    Click Element    ${m_cart_b}
    Sleep    2s
    Wait Until Element Is Visible    ${continue_shoping}    ${timeout}
    Click Element    ${continue_shoping}
    Sleep    1s
    Wait Until Element Is Visible    ${addres_num_1}    ${timeout}
    Click Element    ${addres_num_1}
    Sleep    2s
    Execute Javascript    window.scrollBy(0, 800)
    Wait Until Element Is Visible    ${tf_discount}    ${timeout}
    Input Text    ${tf_discount}    ${discount_code}
    Sleep    1s
    Wait Until Element Is Visible    ${enter_discount}    ${timeout}
    Click Element    ${enter_discount}
    Sleep    3s