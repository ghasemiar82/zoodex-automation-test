*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/desktop_variables.robot
Resource          ../resources/common.robot
Suite Setup       Initialize Browser   
Test Setup        Go To Zoodex         
Test Teardown     Capture Page Screenshot  
Suite Teardown    Close All Browsers

*** Test Cases ***
Login Desktop
    Sleep     3s
    Close Desktop Modal
    Login User desktop