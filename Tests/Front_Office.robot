*** Settings ***
Documentation  Testing the Integrations
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Front_Office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://app.datos-d.com/organization/all-integrations-test/integrations/list


*** Test Cases ***
Testing of the Snapchat integration
    [Documentation]  This is test 1
    [Tags]  test1
    ${Integration_name}=    Set Variable    Snapchat
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the G. Ads Test integration
    [Documentation]  This is test 2
    [Tags]  test2
    ${Integration_name}=    Set Variable    G. Ads Test
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

    Testing of the Stripe Test integration
    [Documentation]  This is test 3
    [Tags]  test3
    ${Integration_name}=    Set Variable    Stripe Inte
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

    Testing of the BrainTree Test integration
    [Documentation]  This is test 4
    [Tags]  test4
    ${Integration_name}=    Set Variable    BrainTree
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s