*** Settings ***
Library           SeleniumLibrary
Resource          ../../variables/mobile_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Mobile Browser   
Test Setup        Go To Zoodex Mobile       
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers
Test Tags    hard

*** Test Cases ***
Search Cart Tedting Mobile
    Sleep     3s
    Close Mobile Modal
    FOR    ${i}    IN RANGE    1    20
        Click Element When Ready    ${search_bar}
        Click Element When Ready    ${search_go_back}
    END
    