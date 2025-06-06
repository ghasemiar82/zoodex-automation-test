*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/mobile_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile      
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Categories Mobile
    Sleep     3s
    Close Mobile Modal
    Wait Until Element Is Visible    ${m_category_1}    ${timeout}
    Click Element    ${m_category_1}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_2}    ${timeout}
    Click Element    ${category_2}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_3}    ${timeout}
    Click Element    ${category_3}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_4}    ${timeout}
    Click Element    ${category_4}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_5}    ${timeout}
    Click Element    ${category_5}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_6}    ${timeout}
    Click Element    ${category_6}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_7}    ${timeout}
    Click Element    ${category_7}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_8}    ${timeout}
    Click Element    ${category_8}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_9}    ${timeout}
    Click Element    ${category_9}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_10}    ${timeout}
    Click Element    ${category_10}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_11}    ${timeout}
    Click Element    ${category_11}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_more}    ${timeout}
    Click Element    ${category_more}
    Sleep    1s
    Wait Until Element Is Visible    ${category_12}    ${timeout}
    Click Element    ${category_12}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_more}    ${timeout}
    Click Element    ${category_more}
    Sleep    1s
    Wait Until Element Is Visible    ${category_13}    ${timeout}
    Click Element    ${category_13}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s
    Wait Until Element Is Visible    ${category_more}    ${timeout}
    Click Element    ${category_more}
    Sleep    1s
    Wait Until Element Is Visible    ${category_14}    ${timeout}
    Click Element    ${category_14}
    Sleep    1s
    Wait Until Element Is Visible    ${go_back}    ${timeout}
    Click Element    ${go_back}
    Sleep    1s