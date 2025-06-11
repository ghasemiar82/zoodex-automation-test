*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/desktop_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Orders Desktop
    Close Desktop Modal
    Select Location Desktop
    
    Search For And Select First Result    ${search_word}      ${first_search_result}
    
    Click Element When Ready            ${clear_text_b}
    
    Search For And Select First Result    ${search_word_2}    ${first_search_result_2}

*** Keywords ***
Search For And Select First Result
    [Documentation]    Inputs a search term, waits for the result, and clicks it.
    [Arguments]    ${search_term}    ${result_locator}
    
    Wait Until Element Is Visible    ${search_bar}    ${timeout}
    Input Text    ${search_bar}    ${search_term}
    
    # به جای Sleep، به صورت هوشمند منتظر نتیجه جستجو می‌مانیم
    Wait Until Element Is Visible    ${result_locator}    ${timeout}
    Click Element    ${result_locator}