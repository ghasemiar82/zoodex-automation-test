*** Settings ***
Library           SeleniumLibrary
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Variables ***
${ZOODEX_URL}    https://zoodex.ir
${PHONE_NUMBER}    09360343360
${BROWSER}    chrome
${timeout}    15s
${logo}    id=header-desktop
${close_modal_b}      //*[@id="__nuxt"]/div[2]/div/div[4]/div/div[1]/p[1]/img
${location_b}    css=[data-test-id="header-address"]
${submit_location_b}    //*[@id="__nuxt"]/div[4]/div/section/div[2]/div[4]/button
${login_B}    css=[data-test-id="login-btn"]
${tf_phone_number}    id=شماره همراه
${submit_login_b}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/form/div/button
${category_1}    //*[@id="__nuxt"]/div[2]/div[1]/div[3]/div[2]/div[1]/div/div/img
${vendor}    //*[@id="__nuxt"]/div[2]/div/div[3]/section/div[2]/div/div[2]/div/div[2]/div/div/div[1]/a
${menu_1}    //*[@id="__nuxt"]/div[2]/div/div[4]/div[1]/div[2]/div/div[2]
${add_item}    //*[@id="422"]/div/div/div[1]/div[2]/div[2]/div[1]
${cart_b}    css:[data-test-id="cart-btn"]
${food_num}    //*[@id="vendors"]/div/div[2]/div[3]/div/div[2]/div[2]/div/span
${category_2}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[2]/a/div/img
${category_3}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[3]/a/div/img
${category_4}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[4]/a/div/img
${category_5}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[5]/a/div/img
${category_6}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[6]/a/div/img
${category_7}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[7]/a/div/img
${category_8}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[8]/a/div/img
${category_9}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[9]/a/div/img
${category_10}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[10]/a/div/img
${category_11}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[11]/a/div/img
${category_12}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[12]/a/div/img
${category_13}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[13]/a/div/img
${category_14}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[2]/div/div/div[14]/a/div/img
${category_next_b}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div/div/div[3]/img
${back}    //*[@id="__nuxt"]/div[2]/div[1]/header/div/div[1]/img
${lets_go}    //*[@id="__nuxt"]/div[2]/div/div[3]/section/div[2]/img
${pu_mid_b}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/section/div[1]/div[1]/div[2]/div/button
${pu_right_b}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/section/div[1]/div[1]/div[1]/div/button
${pu_left_b}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/section/div[1]/div[1]/div[3]/div/button
${pu_back}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/section/div[1]/img
${profile_b}    //*[@id="header-desktop"]/div/section/div/section[3]/div[2]/div[1]
${orders_b}    //*[@id="header-desktop"]/div/section/div/section[3]/div[2]/div[2]/div[5]
${see_order_b}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div[2]/section[2]/div[2]/section/div[1]/div[6]/div[2]/button[1]
${order_again_b}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div[2]/section[2]/div[2]/section/div[1]/div[6]/div[2]/button[2]
${see_order_back}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/img
${vendor_name}    //*[@id="vendors"]/div/div[1]/div/span
${qorbani}    فست فود قربانی
${discount_vendor}    //*[@id="__nuxt"]/div[2]/div/section[3]/div[3]/div[2]/div/div[2]/div/div/div[1]/div/section[2]/a/div/img
${add_food_to_cart_for_discount_b}    //*[@id="12291"]/div/div/div[1]/div[2]/div[2]/div[1]
${continue_shoping}    //*[@id="cart"]/section/div/button
${addres_num_1}    //*[@id="659093"]
${tf_discount}    //*[@id="__nuxt"]/div[2]/div/section/section/section[3]/div[5]/div/input
${enter_discount}    //*[@id="__nuxt"]/div[2]/div/section/section/section[3]/div[5]/div/button
${kabab_khoran}    //*[@id="__nuxt"]/div[2]/div/section[3]/div[1]/div/div/div[2]/div/div[2]/div/div/div[1]/a/div/img
${like}    //*[@id="__nuxt"]/div[2]/div/section/div/div/div[1]/div[2]/img[2]
${chelo_zaferani}    //*[@id="img-50682"]/img
${like_product}    //*[@id="product-detail-back"]/div/div/header/div/div[3]/div/img
${close_modal}    //*[@id="product-detail-back"]/div/div/header/div/div[1]/img
${profile}    //*[@id="__nuxt"]/div[2]/div[2]/div/div[5]/div
${favorites}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div[1]/section[3]/a[4]/div
${not_have_favorites}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div[2]/section/div/img
${tab_2_favorites}    //*[@id="__nuxt"]/div[2]/div/div[3]/div/div[2]/div/div/div[1]/div[2]
*** Test Cases ***
Categories Desktop
    Sleep     3s
    Close Desktop Modal
    Wait Until Element Is Visible    ${category_1}    ${timeout}
    Click Element    ${category_1}
    Sleep    1s
    Wait Until Element Is Visible    ${category_2}    ${timeout}
    Click Element    ${category_2}
    Sleep    1s
    Wait Until Element Is Visible    ${category_3}    ${timeout}
    Click Element    ${category_3}
    Sleep    1s
    Wait Until Element Is Visible    ${category_4}    ${timeout}
    Click Element    ${category_4}
    Sleep    1s
    Wait Until Element Is Visible    ${category_5}    ${timeout}
    Click Element    ${category_5}
    Sleep    1s
    Wait Until Element Is Visible    ${category_6}    ${timeout}
    Click Element    ${category_6}
    Sleep    1s
    Wait Until Element Is Visible    ${category_7}    ${timeout}
    Click Element    ${category_7}
    Sleep    1s
    Wait Until Element Is Visible    ${category_8}    ${timeout}
    Click Element    ${category_8}
    Sleep    1s
    Wait Until Element Is Visible    ${category_9}    ${timeout}
    Click Element    ${category_9}
    Sleep    1s
    Wait Until Element Is Visible    ${category_10}    ${timeout}
    Click Element    ${category_10}
    Sleep    1s
    Wait Until Element Is Visible    ${category_11}    ${timeout}
    Click Element    ${category_11}
    Sleep    1s
    Wait Until Element Is Visible    ${category_12}    ${timeout}
    Click Element    ${category_12}
    Sleep    1s
    Wait Until Element Is Visible    ${category_next_b}    ${timeout}
    Click Element    ${category_next_b}
    Sleep    1s
    Wait Until Element Is Visible    ${category_next_b}    ${timeout}
    Click Element    ${category_next_b}
    Sleep    1s
    Wait Until Element Is Visible    ${category_13}    ${timeout}
    Click Element    ${category_13}
    Sleep    1s
    Wait Until Element Is Visible    ${category_next_b}    ${timeout}
    Click Element    ${category_next_b}
    Sleep    1s
    Wait Until Element Is Visible    ${category_next_b}    ${timeout}
    Click Element    ${category_next_b}
    Sleep    1s
    Wait Until Element Is Visible    ${category_next_b}    ${timeout}
    Click Element    ${category_next_b}
    Sleep    1s
    Wait Until Element Is Visible    ${category_14}    ${timeout}
    Click Element    ${category_14}
    Sleep    1s
*** Keywords ***
Initialize Browser
    Open Browser    ${zoodex_url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.2s

Go To Zoodex
    [Documentation]    Go to zoodex URL and wait for logo
    Go To    ${zoodex_url}
    Wait Until Element Is Visible    ${logo}    ${timeout}

Close Desktop Modal
    [Documentation]    Dismiss any modal or popup that appears on the homepage
    Wait Until Element Is Visible    ${close_modal_b}    ${timeout}
    Click Element    ${close_modal_b}