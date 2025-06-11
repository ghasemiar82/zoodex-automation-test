*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/mobile_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile        
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers
Test Tags    important

*** Test Cases ***
Profile Sections Mobile
    Close Mobile Modal
    Login User Mobile
    
    Navigate To Profile And Edit Personal Info
    Edit Bank Information
    Add New Address And Return
    Navigate Through Informational Tabs
    Manage Credits Flow
    Create New Ticket Flow
    Navigate To Invite Page

*** Keywords ***
# --- Keywords سطح بالا و منطقی ---

Navigate To Profile And Edit Personal Info
    [Documentation]    Navigates to profile and edits the personal information.
    Click Element When Ready    ${profile}
    Click Element When Ready    ${personal_info}
    Click Element When Ready    ${edit_personal_info}
    Input Text Into Field       ${tf_full_name}        ${name}
    Input Text Into Field       ${tf_national_code}    ${national_code}
    Input Text Into Field       ${tf_email}            ${EMPTY}
    Click Element When Ready    ${submit_personal_info_b}
    Sleep    5s

Edit Bank Information
    [Documentation]    Edits the bank information.
    Execute Javascript  window.scrollTo(0, document.body.scrollHeight)
    Click Element When Ready    ${edit_personal_bank_info}
    Input Text Into Field       ${tf_card_number}      ${card_num}
    Input Text Into Field       ${tf_shaba}            ${shaba_num}
    Click Element When Ready    ${submit_bank_info}

Add New Address And Return
    [Documentation]    Handles the full flow of adding an address and returning.
    Click Element When Ready    ${profile_go_back}
    Click Element When Ready    ${address}
    Sleep    2s
    Click Element When Ready    ${add_address_b}
    Sleep    2s
    Click Element When Ready    ${m_submit_location_b}
    Input Text Into Field       ${tf_address_title}    ${address_title}
    Click Element When Ready    ${submit_address_b}
    Click Element When Ready    ${address_delete}
    Click Element When Ready    ${delete_address_confirm}
    Click Element When Ready    ${address_go_back}

Navigate Through Informational Tabs
    [Documentation]    Clicks through Discounts and Feedbacks tabs.
    Click Element When Ready    ${discounts}
    Click Element When Ready    ${go_back}
    Click Element When Ready    ${feedbacks}
    Click Element When Ready    ${go_back}

Manage Credits Flow
    [Documentation]    Handles the entire credit management flow.
    Click Element When Ready    ${credits}
    Click Element When Ready    ${increase_credit_b}
    Input Text Into Field       ${tf_price}    ${price}
    Click Element When Ready    ${increase_b}
    Click Element When Ready    ${decrease_b}
    Click Element When Ready    ${price_1}
    Click Element When Ready    ${price_2}
    Click Element When Ready    ${price_3}
    Click Element When Ready    ${price_4}
    Click Element When Ready    ${price_5}
    Click Element When Ready    ${price_6}
    Click Element When Ready    ${m_close_modal_b}
    Click Element When Ready    ${credit_back_b}
    Input Text Into Field       ${tf_price_credit_back}    ${price}
    Click Element When Ready    ${m_close_modal_b}
    Click Element When Ready    ${go_back}

Create New Ticket Flow
    [Documentation]    Handles the new ticket creation flow.
    Execute Javascript  window.scrollTo(0, document.body.scrollHeight)
    Click Element When Ready    ${tickets}
    Click Element When Ready    ${new_ticket}
    Click Element When Ready    ${op1}
    Click Element When Ready    ${op2}
    Click Element When Ready    ${op3}
    Input Text Into Field       ${tf_ticket}           ${ticket_text}
    Click Element When Ready    ${m_close_modal_b}
    Click Element When Ready    ${go_back}

Navigate To Invite Page
    [Documentation]    Navigates to the invite friends page.
    Click Element When Ready    ${invite}

Input Text Into Field
    [Documentation]    A robust keyword that clears a field and inputs new text.
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Clear Element Text    ${locator}
    Input Text    ${locator}    ${text}