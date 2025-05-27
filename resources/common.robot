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

*** Keywords ***
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
    Wait Until Element Is Visible    ${close_dialog}    ${timeout}
    Click Element    ${close_dialog}

Close Mobile Modal
    [Documentation]    Dismiss any modal or popup that appears on the mobile homepage
    Wait Until Element Is Visible    ${m_close_modal_b}    ${timeout}
    Click Element    ${m_close_modal_b}

Select Location Desktop
    [Documentation]    Select location on map
    Wait Until Element Is Visible     ${location_b}
    Click Element    ${location_b}
    Wait Until Element Is Visible    ${submit_location_b}    ${timeout}
    Sleep    2s
    Click Button    ${submit_location_b}

Select Location Mobile
    [Documentation]    Select location on map
    Wait Until Element Is Visible     ${m_location_b}
    Click Element    ${m_location_b}
    Wait Until Element Is Visible    ${m_submit_location_b}    ${timeout}
    Sleep    2s
    Click Button    ${m_submit_location_b}

Login User desktop
    [Documentation]    user login process
    Wait Until Element Is Visible    ${login_B}    ${timeout}
    Click Element    ${login_B}
    Wait Until Element Is Visible    ${tf_phone_number}    ${timeout}
    Input Text    ${tf_phone_number}    ${PHONE_NUMBER}
    Wait Until Element Is Visible    ${submit_login_b}    ${timeout}
    Click Element    ${submit_login_b}
    Sleep    15s

Login User Mobile
    [Documentation]    user login process
    Wait Until Element Is Visible    ${m_tf_phone_number}    ${timeout}
    Input Text    ${m_tf_phone_number}    ${PHONE_NUMBER}
    Wait Until Element Is Visible    ${m_submit_login_b}    ${timeout}
    Click Element    ${m_submit_login_b}
    Sleep    15s