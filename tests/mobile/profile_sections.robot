*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile        
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Profile Sctions Mobile
    Sleep     3s
    Close Mobile Modal
    Wait Until Element Is Visible    ${m_login_B}    ${timeout}
    Click Element    ${m_login_B}
    Sleep    1s
    Login User Mobile
    Wait Until Element Is Visible    ${profile}    ${timeout}
    Click Element    ${profile}
    Sleep    1s
    Wait Until Element Is Visible    ${personal_info}    ${timeout}
    Click Element    ${personal_info}
    Sleep    1s
    Wait Until Element Is Visible    ${edit_personal_info}    ${timeout}
    Click Element    ${edit_personal_info}
    Sleep    1s
    Wait Until Element Is Visible    ${tf_full_name}    ${timeout}
    Clear Element Text    ${tf_full_name}
    Sleep    1s
    Input Text    ${tf_full_name}    ${name}
    Clear Element Text    ${tf_national_code}
    Sleep    1s
    Input Text    ${tf_national_code}    ${national_code}
    Clear Element Text    ${tf_email}
    Sleep    1s
    Wait Until Element Is Visible    ${submit_personal_info_b}    ${timeout}
    Click Element    ${submit_personal_info_b}
    Sleep    1s
    Execute Javascript    window.scrollBy(0, 400)
    Wait Until Element Is Visible    ${edit_personal_bank_info}    ${timeout}
    Click Element    ${edit_personal_bank_info}
    Sleep    1s
    Wait Until Element Is Visible    ${tf_card_number}    ${timeout}
    Clear Element Text    ${tf_card_number}
    Sleep    1s
    Input Text    ${tf_card_number}    ${card_num}
    Clear Element Text    ${tf_shaba}
    Sleep    1s
    Input Text    ${tf_shaba}    ${shaba_num}
    Click Element    ${submit_bank_info}
    Sleep    3s
    Wait Until Element Is Visible    //*[@id="profile-info-go-back"]/img    ${timeout}
    Click Element    //*[@id="profile-info-go-back"]/img
    Sleep    1s
    Wait Until Element Is Visible    ${address}    ${timeout}
    Click Element    ${address}
    Sleep    1s
    Wait Until Element Is Visible    ${add_address_b}    ${timeout}
    Click Element    ${add_address_b}
    Sleep    1s
    Wait Until Element Is Visible    ${m_submit_location_b}    ${timeout}
    Click Element    ${m_submit_location_b}
    Sleep    1s
    Wait Until Element Is Visible    ${tf_address_title}    ${timeout}
    Input Text    ${tf_address_title}    ${address_title}
    Sleep    1s
    Wait Until Element Is Visible    ${submit_address_b}    ${timeout}
    Click Element    ${submit_address_b}
    Sleep    1s
    Wait Until Element Is Visible    //*[@id="__nuxt"]/div[3]/div/header/div/div[1]/img    ${timeout}
    Click Element    //*[@id="__nuxt"]/div[3]/div/header/div/div[1]/img
    Sleep    1s
    Wait Until Element Is Visible    ${discounts}    ${timeout}
    Click Element    ${discounts}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${feedbacks}    ${timeout}
    Click Element    ${feedbacks}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${credits}    ${timeout}
    Click Element    ${credits}
    Sleep    1s
    Wait Until Element Is Visible    ${increase_credit_b}    ${timeout}
    Click Element    ${increase_credit_b}
    Sleep    1s
    Wait Until Element Is Visible    ${tf_price}    ${timeout}
    Input Text    ${tf_price}    ${price}
    Sleep    1s
    Wait Until Element Is Visible    ${increase_b}    ${timeout}
    Click Element    ${increase_b}
    Sleep    1s
    Wait Until Element Is Visible    ${decrease_b}    ${timeout}
    Click Element    ${decrease_b}
    Sleep    1s
    Wait Until Element Is Visible    ${price_1}    ${timeout}
    Click Element    ${price_1}
    Sleep    1s
    Wait Until Element Is Visible    ${price_2}    ${timeout}
    Click Element    ${price_2}
    Sleep    1s
    Wait Until Element Is Visible    ${price_3}    ${timeout}
    Click Element    ${price_3}
    Sleep    1s
    Wait Until Element Is Visible    ${price_4}    ${timeout}
    Click Element    ${price_4}
    Sleep    1s
    Wait Until Element Is Visible    ${price_5}    ${timeout}
    Click Element    ${price_5}
    Sleep    1s
    Wait Until Element Is Visible    ${price_6}    ${timeout}
    Click Element    ${price_6}
    Sleep    1s
    Wait Until Element Is Visible    ${m_close_modal_b}    ${timeout}
    Click Element    ${m_close_modal_b}
    Sleep    1s
    Wait Until Element Is Visible    ${credit_back_b}    ${timeout}
    Click Element    ${credit_back_b}
    Sleep    1s
    Wait Until Element Is Visible    ${tf_price_credit_back}    ${timeout}
    Input Text    ${tf_price_credit_back}    ${price}
    Sleep    1s
    Wait Until Element Is Visible    ${m_close_modal_b}    ${timeout}
    Click Element    ${m_close_modal_b}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Execute Javascript    window.scrollBy(0, 400)
    Wait Until Element Is Visible    ${tickets}    ${timeout}
    Click Element    ${tickets}
    Sleep    1s
    Wait Until Element Is Visible    ${new_ticket}    ${timeout}
    Click Element    ${new_ticket}
    Sleep    1s
    Wait Until Element Is Visible    ${op1}    ${timeout}
    Click Element    ${op1}
    Sleep    1s
    Wait Until Element Is Visible    ${op2}    ${timeout}
    Click Element    ${op2}
    Sleep    1s
    Wait Until Element Is Visible    ${op3}    ${timeout}
    Click Element    ${op3}
    Sleep    1s
    Wait Until Element Is Visible    ${tf_ticket}    ${timeout}
    Input Text    ${tf_ticket}    ${ticket_text}
    Sleep    1s
    Wait Until Element Is Visible    ${m_close_modal_b}    ${timeout}
    Click Element    ${m_close_modal_b}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${invite}    ${timeout}
    Click Element    ${invite}
    Sleep    1s



    
    
