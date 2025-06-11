*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/desktop_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Categories Desktop
    Close Desktop Modal
    
    Click Element When Ready    ${category_1}
    Click Element When Ready    ${category_2}
    Click Element When Ready    ${category_3}
    Click Element When Ready    ${category_4}
    Click Element When Ready    ${category_5}
    Click Element When Ready    ${category_6}
    Click Element When Ready    ${category_7}
    Click Element When Ready    ${category_8}
    Click Element When Ready    ${category_9}
    Click Element When Ready    ${category_10}
    Click Element When Ready    ${category_11}
    Click Element When Ready    ${category_12}
    Click Element When Ready    ${category_next_b}
    Click Element When Ready    ${category_next_b}
    Click Element When Ready    ${category_13}
    Click Element When Ready    ${category_next_b}
    Click Element When Ready    ${category_next_b}
    Click Element When Ready    ${category_14}
    Click Element When Ready    ${category_next_b}
    Click Element When Ready    ${category_next_b}
    Click Element When Ready    ${category_next_b}
    Click Element When Ready    ${category_14}
