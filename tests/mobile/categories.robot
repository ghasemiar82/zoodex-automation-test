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
Categories Mobile
    Close Mobile Modal

    @{initial_categories}=    Create List
    ...    ${m_category_1}
    ...    ${category_2}
    ...    ${category_3}
    ...    ${category_4}
    ...    ${category_5}
    ...    ${category_6}
    ...    ${category_7}
    ...    ${category_8}
    ...    ${category_9}
    ...    ${category_10}
    ...    ${category_11}

    FOR    ${category}    IN    @{initial_categories}
        Select Category And Return    ${category}
    END

    Click Element When Ready    ${category_more}
    Select Category And Return    ${category_12}

    Click Element When Ready    ${category_more}
    Select Category And Return    ${category_13}

    Click Element When Ready    ${category_more}
    Select Category And Return    ${category_14}
*** Keywords ***
Select Category And Return
    [Documentation]    Selects a category and then clicks the 'go back' button.
    [Arguments]    ${category_locator}
    Click Element When Ready    ${category_locator}
    Click Element When Ready    ${go_back}