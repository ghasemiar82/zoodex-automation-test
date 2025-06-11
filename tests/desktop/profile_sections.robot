*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/desktop_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Profile Sections Desktop
    Close Desktop Modal
    Login User desktop
    
    Navigate To Main Profile Page
    Edit Personal Information
    Edit Bank Information
    Add New Address
    Navigate Between Profile Tabs
    Manage Credits
    Create New Ticket
    Manage Invite Friends

*** Keywords ***
# --- Keywords سطح بالا و منطقی ---

Navigate To Main Profile Page
    [Documentation]    Navigates from anywhere to the main user profile page.
    Click Element When Ready    ${profile_b}
    Click Element When Ready    ${profile}

Edit Personal Information
    [Documentation]    Fills out and submits the personal information section.
    Click Element When Ready    ${edit_personal_info}
    Input Text Into Field       ${tf_full_name}         ${name}
    Input Text Into Field       ${tf_national_code}     ${national_code}
    Input Text Into Field       ${tf_email}             ${EMPTY}  
    Click Element When Ready    ${submit_personal_info_b}

Edit Bank Information
    [Documentation]    Fills out and submits the bank information section.
    Click Element When Ready    ${edit_personal_bank_info}
    Input Text Into Field       ${tf_card_number}       ${card_num}
    Input Text Into Field       ${tf_shaba}             ${shaba_num}
    Click Element When Ready    ${submit_bank_info}

Add New Address
    [Documentation]    Handles the complete flow of adding a new address.
    Click Element When Ready    ${address}
    Click Element When Ready    ${add_address_b}
    Click Element When Ready    ${submit_location_b}
    Input Text Into Field       ${tf_address_title}     ${address_title}
    Click Element When Ready    ${submit_address_b}

Navigate Between Profile Tabs
    [Documentation]    Clicks through the main tabs in the profile section.
    Click Element When Ready    ${discounts}
    Click Element When Ready    ${feedbacks}

Manage Credits
    [Documentation]    Tests the increase and decrease credit functionality.
    Click Element When Ready    ${credits}
    Click Element When Ready    ${increase_credit_b}
    Input Text Into Field       ${tf_price}             ${price}
    Click Element When Ready    ${increase_b}
    Click Element When Ready    ${decrease_b}
    Click Element When Ready    ${price_1}
    Click Element When Ready    ${price_2}
    Click Element When Ready    ${price_3}
    Click Element When Ready    ${price_4}
    Click Element When Ready    ${price_5}
    Click Element When Ready    ${price_6}
    Click Element When Ready    ${close_dialog}
    Click Element When Ready    ${credit_back_b}
    Input Text Into Field       ${tf_price_credit_back}    ${price}
    Click Element When Ready    ${close_dialog}

Create New Ticket
    [Documentation]    Tests the ticket creation flow.
    Execute Javascript          window.scrollBy(0, 400)
    Click Element When Ready    ${tickets}
    Click Element When Ready    ${new_ticket}
    Click Element When Ready    ${op1}
    Click Element When Ready    ${op2}
    Click Element When Ready    ${op3}
    Input Text Into Field       ${tf_ticket}            ${ticket_text}
    Click Element When Ready    ${close_dialog}

Manage Invite Friends
    [Documentation]    Navigates to the invite friends section.
    Click Element When Ready    ${invite}

# --- Keywords کمکی و سطح پایین ---

Input Text Into Field
    [Documentation]    A robust keyword that clears a field and inputs new text.
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Clear Element Text    ${locator}
    Input Text    ${locator}    ${text}