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
Orders Mobile
    Close Mobile Modal
    Click Element When Ready    ${search_bar}
    
    Search For And Verify Result    ${search_word}    ${first_search_result}
    
    Click Element When Ready    ${back_to_search}
    
    Wait Until Element Is Visible    ${search_bar_2}    ${timeout}
    Clear Element Text    ${search_bar_2}
    
    Search For And Verify Result    ${search_word_2}    ${first_search_result_2}
    
    Click Element When Ready    ${continue_order_b}

*** Keywords ***
Search For And Verify Result
    [Documentation]    Searches for a term, waits intelligently, verifies, and clicks the result.
    [Arguments]    ${search_term}    ${result_locator}
    
    Wait Until Element Is Visible    ${search_bar_2}    ${timeout}
    Input Text    ${search_bar_2}    ${search_term}
    Sleep    2s
    Wait Until Element Is Visible    ${result_locator}    ${timeout}
    
    Click Element    ${result_locator}