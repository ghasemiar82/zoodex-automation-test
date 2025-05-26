*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Discounts Desktop
    Sleep     3s
    Close Desktop Modal
    Login User desktop
    Sleep    15s
    Execute Javascript    window.scrollBy(0, 600)
    ${discount_code}=    Get Text    //*[@id="__nuxt"]/div[2]/div/section[3]/div[3]/div[2]/div/div[2]/div/div/div[1]/div/section[1]/span
    Sleep    1s
    Wait Until Element Is Visible    ${discount_vendor}    ${timeout}
    Click Element    ${discount_vendor}
    Sleep    1s
    Wait Until Element Is Visible    ${menu_1}    ${timeout}
    Click Element    ${menu_1}
    Sleep    2s
    Wait Until Element Is Visible    ${add_food_to_cart_for_discount_b}    ${timeout}
    Click Element    ${add_food_to_cart_for_discount_b}
    Sleep    2s

    ${found}=    Run Keyword And Return Status    Element Should Contain    //*[@id="__nuxt"]/div[4]/div/div[1]/p[2]    زمان تحویل

    IF    ${found}
        Wait Until Element Is Visible    //*[@id="1404/03/03 19:00:00"]    ${timeout}
        Click Element    //*[@id="__nuxt"]/div[4]/div/section[2]/div[2]/div[1]/div/label/span
        Sleep    2s
        
        Wait Until Element Is Visible    //*[@id="__nuxt"]/div[4]/div/div[4]/button    ${timeout}
        Click Element    //*[@id="__nuxt"]/div[4]/div/div[4]/button
        Sleep    2s
        Wait Until Element Is Visible    ${add_food_to_cart_for_discount_b}    ${timeout}
        Click Element    ${add_food_to_cart_for_discount_b}
        Sleep    2s
    END
    Wait Until Element Is Visible    ${cart_b}    ${timeout}
    Click Element    ${cart_b}
    Sleep    2s
    Wait Until Element Is Visible    ${continue_shoping}    ${timeout}
    Click Element    ${continue_shoping}
    Sleep    1s
    Wait Until Element Is Visible    ${addres_num_1}    ${timeout}
    Click Element    ${addres_num_1}
    Sleep    2s
    Execute Javascript    window.scrollBy(0, 600)
    Wait Until Element Is Visible    ${tf_discount}    ${timeout}
    Input Text    ${tf_discount}    ${discount_code}
    Sleep    1s
    Wait Until Element Is Visible    ${enter_discount}    ${timeout}
    Click Element    ${enter_discount}
    Sleep    3s