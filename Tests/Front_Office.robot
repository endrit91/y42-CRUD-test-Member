*** Settings ***
Documentation  Testing the Integrations
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Front_Office.robot

*** Variables ***
${BROWSER} =  firefox
${URL} =  https://app.datos-d.com/organization/testingcorp1/integrations/list


*** Test Cases ***
Testing of the CRUD operations for the Integrations
    [Documentation]  CRUD TEST Member
    [Tags]  test1
    ${Integration_name}=    Set Variable    Typeform
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Crud test of integrations    ${Integration_name}
    Sleep  5s

