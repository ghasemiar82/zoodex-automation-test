*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/env_variables.robot
Resource   ../variables/desktop_variables.robot
Resource   ../variables/mobile_variables.robot

*** Keywords ***
Initialize Browser
    Open Browser    ${zoodex_url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.2s

Initialize Mobile Browser
    ${mobile_emulation}    Create Dictionary    deviceName    Pixel 2
    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys,selenium.webdriver
    Call Method    ${options}    add_experimental_option    mobileEmulation    ${mobile_emulation}
    Open Browser    ${zoodex_url}    ${browser}    options=${options}

Cleanup Browser
    [Documentation]    Close all browsers
    Close All Browsers

Go To Zoodex
    [Documentation]    Go to zoodex URL and wait for logo
    Go To    ${zoodex_url}
    Wait Until Element Is Visible    ${logo}    ${timeout}

Go To Zoodex Mobile
    [Documentation]    Go to zoodex URL and wait for logo
    Go To    ${zoodex_url}
    Wait Until Element Is Visible    ${m_logo}    ${timeout}
    
Close Desktop Modal
    [Documentation]    Dismiss any modal or popup that appears on the homepage
    Click Element When Ready    ${close_dialog}

Close Mobile Modal
    [Documentation]    Dismiss any modal or popup that appears on the mobile homepage
    Sleep    3s
    Click Element When Ready    ${m_close_modal_b}

Select Location Desktop
    [Documentation]    Selects the location on the map and submits it.
    Sleep    3s
    Click Element When Ready    ${location_b}
    Click Element When Ready    ${submit_location_b}

Select Location Mobile
    [Documentation]    Selects the location on the map and submits it.
    Click Element When Ready    ${m_location_b}
    Click Element When Ready    ${m_submit_location_b}

Login User desktop
    [Documentation]    Handles the user login process efficiently and reliably.

    Click Element When Ready    ${login_B}
    Wait Until Element Is Visible    ${tf_phone_number}    ${timeout}
    Input Text    ${tf_phone_number}    ${PHONE_NUMBER}
    Click Element When Ready    ${submit_login_b}
    Sleep    3s
    Wait Until Element Is Visible    ${tf_otp}    ${timeout}
    Sleep    2s
    Input Text    ${tf_otp_2}    ${code}

    Wait Until Element Is Visible    ${category_1}    ${timeout}

Click Element When Ready
    [Documentation]    Waits for an element to be visible and enabled, then clicks it.
    [Arguments]    ${locator}

    Wait Until Element Is Visible    ${locator}    ${timeout}
    Wait Until Element Is Enabled    ${locator}    ${timeout}
    Click Element    ${locator}

Login User Mobile
    [Documentation]    Handles the mobile user login process reliably.

    Click Element When Ready    ${m_login_B}
    
    Wait Until Element Is Visible    ${m_tf_phone_number}    ${timeout}
    Input Text    ${m_tf_phone_number}    ${PHONE_NUMBER}
    
    Click Element When Ready    ${m_submit_login_b}
    Sleep    3s
    Wait Until Element Is Visible    ${m_tf_otp}    ${timeout}
    Sleep    2s
    Input Password    ${m_tf_otp_2}    ${code}

    Wait Until Element Is Visible    ${m_category_1}    ${timeout}

Scroll Down Smoothly
    [Documentation]    Scrolls the page down smoothly over a given duration.
    [Arguments]    ${total_duration_seconds}=3    ${scroll_steps}=30

    ${page_height}=    Execute Javascript    return document.body.scrollHeight;

    ${scroll_increment}=    Evaluate    ${page_height} / ${scroll_steps}
    ${delay_between_steps}=    Evaluate    ${total_duration_seconds} / ${scroll_steps}

    Log To Console    Scrolling down ${page_height} pixels in ${scroll_steps} steps.

    FOR    ${i}    IN RANGE    ${scroll_steps}
        Execute Javascript    window.scrollBy(0, ${scroll_increment});
        Sleep    ${delay_between_steps}s
    END