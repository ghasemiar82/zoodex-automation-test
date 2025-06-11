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
Favorites Mobile
    Close Mobile Modal
    Login User Mobile
    
    Like A Vendor And A Product
    Navigate To Favorites And Verify Items
    UnLike A Vendor And A Product

*** Keywords ***
Like A Vendor And A Product
    [Documentation]    Finds a specific vendor, likes it, then finds a product and likes it.
    Scroll Element Into View    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran}
    Sleep    1s
    Click Element When Ready    ${like}
    Click Element When Ready    ${kabab_khoran_menu_1}
    Sleep    1s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Sleep    1s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Click Element When Ready    ${chelo_zaferani}
    Sleep    1s
    Click Element When Ready    ${like_product}

    Click Element When Ready    ${product_details_close}


Navigate To Favorites And Verify Items
    [Documentation]    Navigates to the favorites page and verifies items are present.
    Click Element When Ready    ${profile}
    Click Element When Ready    ${favorites}
    Element Should Not Be Visible    ${like_none}
    Click Element When Ready    ${tab_2_favorites}
    Element Should Not Be Visible    ${like_none}

UnLike A Vendor And A Product
    [Documentation]    Finds a specific vendor, unlikes it, then finds a product and unlikes it.
    Click Element When Ready    ${home}
    Scroll Element Into View    ${kabab_khoran}
    Click Element When Ready    ${kabab_khoran}
    Sleep    2s
    Click Element When Ready    ${like}
    Sleep    2s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Sleep    1s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Sleep    1s
    Click Element When Ready    ${kabab_khoran_menu_1}
    Click Element When Ready    ${chelo_zaferani}
    Sleep    2s
    Click Element When Ready    ${like_product}
    Sleep    2s
    Click Element When Ready    ${product_details_close}
