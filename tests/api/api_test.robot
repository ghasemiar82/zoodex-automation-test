*** Settings ***
Library    RequestsLibrary
# کتابخانه Collections به طور کامل حذف شد تا هیچ وابستگی‌ای وجود نداشته باشد

*** Variables ***
${BASE_URL}     https://admin.zoodex.ir
${API_ALIAS}    zoodex_api

*** Test Cases ***
Get Cities - Verify Basic Response
    [Documentation]    Checks if the API responds correctly and the list is not empty.
    [Tags]    API    HealthCheck

    Create Session    ${API_ALIAS}    ${BASE_URL}    disable_warnings=1
    ${response}=    GET On Session    ${API_ALIAS}    /api/v3/cities
    
    Should Be Equal As Strings    ${response.status_code}    200
    
    # روش جدید برای بررسی وجود کلید در دیکشنری
    ${key_exists}=    Evaluate    'Content-Type' in $response.headers
    Should Be True    ${key_exists}    The 'Content-Type' header is missing from the response.
    
    ${json_response}=    Set Variable    ${response.json()}
    
    ${is_list}=    Evaluate    isinstance($json_response, list)
    Should Be True    ${is_list}    Response body is not a list.

    ${list_length}=    Get Length    ${json_response}
    Should Be True    ${list_length} > 0    Response list is empty.
    Log    API returned a list with ${list_length} cities.

Verify Kerman City Data
    [Documentation]    Finds "Kerman" in the list and verifies its data.
    [Tags]    API    DataValidation

    Create Session    ${API_ALIAS}    ${BASE_URL}    disable_warnings=1
    ${response}=    GET On Session    ${API_ALIAS}    /api/v3/cities
    Should Be Equal As Strings    ${response.status_code}    200
    ${cities_list}=    Set Variable    ${response.json()}
    
    ${kerman_city}=    Find City By Title    ${cities_list}    کرمان
    Should Not Be Empty    ${kerman_city}    City 'Kerman' was not found in the response.
    
    Should Be Equal As Numbers    ${kerman_city['id']}      1
    Should Be Equal As Strings    ${kerman_city['slug']}    kerman
    
    ${are_areas_a_list}=    Evaluate    isinstance($kerman_city['areas'], list)
    Should Be True    ${are_areas_a_list}    The 'areas' key should be a list.

Verify All Cities Have Required Keys
    [Documentation]    Checks if every city object in the response has the required keys.
    [Tags]    API    SchemaValidation

    Create Session    ${API_ALIAS}    ${BASE_URL}    disable_warnings=1
    ${response}=    GET On Session    ${API_ALIAS}    /api/v3/cities
    Should Be Equal As Strings    ${response.status_code}    200
    ${cities_list}=    Set Variable    ${response.json()}

    @{expected_keys}=    Create List    id    title    slug    latitude    longitude    areas
    FOR    ${city}    IN    @{cities_list}
        Log    Checking schema for city: ${city['title']}
        FOR    ${key}    IN    @{expected_keys}
            # روش جدید و مقاوم برای بررسی وجود کلید در دیکشنری
            ${key_exists_in_city}=    Evaluate    $key in $city
            Should Be True    ${key_exists_in_city}    Key '${key}' not found in city: ${city['title']}
        END
    END

*** Keywords ***
Find City By Title
    [Documentation]    Finds and returns a city object from a list of cities by its title.
    [Arguments]    ${list_of_cities}    ${target_title}
    
    FOR    ${city_item}    IN    @{list_of_cities}
        IF    '${city_item['title']}' == '${target_title}'
            RETURN    ${city_item}
        END
    END
    RETURN    ${None}