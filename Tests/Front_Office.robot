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
Testing of the stripe integration
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    #FrontOfficeApp.Condition logic
    Sleep  5s

#"Team" page should match requirements
 #   [Documentation]  This is test 2
  #  [Tags]  test2
   # FrontOfficeApp.Go to Landing Page
    #FrontOfficeApp.Go to "Team" Page
    #FrontOfficeApp.Validate "Team" Page