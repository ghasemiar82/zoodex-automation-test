*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../../variables/mobile_variables.robot
Resource          ../../resources/common.robot
Suite Setup       Initialize Mobile Browser
Test Setup        Go To Zoodex Mobile
Test Teardown     Capture Page Screenshot
Suite Teardown    Close All Browsers
Test Tags    important

*** Test Cases ***
Discounts Mobile
    Close Mobile Modal
    Login User Mobile
    Scroll Element Into View    ${kabab_khoran}
    Wait Until Element Is Visible    ${kabab_khoran}   ${timeout}
    Click Element    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran_menu_1}
    Sleep    1s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Sleep    1s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Wait Until Element Is Visible    ${m_add_item}    ${timeout}
    Click Element    ${m_add_item}
    Sleep    2s

    ${found}=    Run Keyword And Return Status    Element Should Contain    ${delivery_time}    زمان تحویل

    IF    ${found}
        Wait Until Element Is Visible    ${time_1}    ${timeout}
        Click Element    ${time_1}
        Sleep    2s
        
        Wait Until Element Is Visible    ${submit_pre_order_b}    ${timeout}
        Click Element    ${submit_pre_order_b}
        Sleep    2s

        Wait Until Element Is Visible    ${m_add_item}    ${timeout}
        Click Element    ${m_add_item}
        Sleep    2s
    END
    Wait Until Element Is Visible    ${m_cart_b}    ${timeout}
    Click Element    ${m_cart_b}
    Sleep    3s
    Execute Javascript    window.scrollBy(0, 800)

    ${tax}            Get Number From Optional Element    ${tax_element}
    ${plus_discount}  Get Number From Optional Element    ${plus_discount_element}
    ${packaging_cost}  Get Number From Optional Element    ${packaging_cost_element}

    Wait Until Element Is Visible    ${food_price_element}    ${timeout}
    ${food_price}     Get Number From Element    ${food_price_element}

    ${tax_decimal}             Evaluate    ${tax} / 100.0
    ${discount_decimal}        Evaluate    ${plus_discount} / 100.0
    Log To Console             Converted tax decimal: ${tax_decimal}
    Log To Console             Converted discount decimal: ${discount_decimal}

    ${price_with_tax}          Evaluate    ${food_price} * (1 + ${tax_decimal})
    Log To Console             Price after tax: ${price_with_tax}

    ${calculated_final_price}  Evaluate    ${price_with_tax} * (1 - ${discount_decimal})
    Log To Console             Final calculated price: ${calculated_final_price}
    
    Wait Until Element Is Visible    ${end_price_element}    ${timeout}
    ${end_price}      Get Number From Element    ${end_price_element}

    Should Be Equal As Numbers    ${calculated_final_price}    ${end_price}
    Log To Console    Verification successful: The calculated price matches the expected price.

    Wait Until Element Is Visible    ${cart_trash}   ${timeout}
    Click Element    ${cart_trash}
    Sleep    1s
    Wait Until Element Is Visible    ${delete_all_cart}   ${timeout}
    Click Element    ${delete_all_cart}
    Sleep    1s

*** Keywords ***
Get Number From Element
    [Documentation]    Reads the text from an element, extracts only the digits, and returns it as an integer.
    [Arguments]    ${locator}
    
    ${raw_text}           Get Text             ${locator}
    Log To Console        Raw text from element: ${raw_text}
    ${text_without_commas}  Replace String       ${raw_text}    ,    ${EMPTY}
    ${matched_numbers}    Get Regexp Matches   ${text_without_commas}    \\d+
    Log To Console        Extracted number string: ${matched_numbers[0]}
    ${final_number}       Convert To Integer   ${matched_numbers[0]}
    Log To Console        Final converted number: ${final_number}
    RETURN    ${final_number}

Get Number From Optional Element
    [Documentation]    Tries to read a number from an element. If the element does not exist,
    ...    it returns 0 without failing the test.
    [Arguments]    ${locator}
    
    ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}    ${timeout}
    
    IF    ${status}
        ${value}=    Get Number From Element    ${locator}
        RETURN    ${value}
    ELSE
        Log To Console    Element with locator '${locator}' not found. Defaulting to 0.
        RETURN    ${0}
    END

