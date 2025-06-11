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
Vendor Search Mobile
    Close Mobile Modal
    Click Element When Ready    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran_search_b}
    
    Search On Vendor Page And Verify Result    ${kabab_khoran_search_text}
    
    Clear Element Text    ${kabab_khoran_search_input}
    
    Search On Vendor Page And Verify Result    ${search_word}
    
    Click Element When Ready    ${kabab_khoran_search_back}
*** Keywords ***
Search On Vendor Page And Verify Result
    [Documentation]    Searches for a term on the vendor page, verifies the result appears.
    [Arguments]    ${search_term}
    
    Wait Until Element Is Visible    ${kabab_khoran_search_input}    ${timeout}
    Input Text    ${kabab_khoran_search_input}    ${search_term}