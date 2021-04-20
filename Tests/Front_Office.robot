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
Testing of the Taboola integration
    [Documentation]  This is test 1
    [Tags]  test1
    ${Integration_name}=    Set Variable    Taboola
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the G. Ads integration
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

Testing of the Stripe integration
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

Testing of the BrainTree integration
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

Testing of the Amazon Advertising Test integration
    [Documentation]  This is test 5
    [Tags]  test5
    ${Integration_name}=    Set Variable    Amazon Advertising Test
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the S3 Test integration
    [Documentation]  This is test 6
    [Tags]  test6
    ${Integration_name}=    Set Variable    S3 Test
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Linkedin ads integration
    [Documentation]  This is test 7
    [Tags]  test7
    ${Integration_name}=    Set Variable    Linkedin ads
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Snapchat integration
    [Documentation]  This is test 8
    [Tags]  test8
    ${Integration_name}=    Set Variable    Snapchat
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s


Testing of the G. Big Query integration
    [Documentation]  This is test 9
    [Tags]  test9
    ${Integration_name}=    Set Variable    G. Big Query Test
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Airtable integration
    [Documentation]  This is test 10
    [Tags]  test10
    ${Integration_name}=    Set Variable    Airtable
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Tik Tok integration
    [Documentation]  This is test 11
    [Tags]  test11
    ${Integration_name}=    Set Variable    Tik Tok
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Test PostgreSQL integration
    [Documentation]  This is test 12
    [Tags]  test12
    ${Integration_name}=    Set Variable    Test PostgreSQL
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the GCS Test integration
    [Documentation]  This is test 13
    [Tags]  test13
    ${Integration_name}=    Set Variable    GCS Test
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Zendesk integration
    [Documentation]  This is test 14
    [Tags]  test14
    ${Integration_name}=    Set Variable    Zendesk
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Twitter Ads integration
    [Documentation]  This is test 15
    [Tags]  test15
    ${Integration_name}=    Set Variable    Twitter Ads
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the G Analytics Test integration
    [Documentation]  This is test 16
    [Tags]  test16
    ${Integration_name}=    Set Variable    G Analytics Test
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Google Search Console integration
    [Documentation]  This is test 17
    [Tags]  test17
    ${Integration_name}=    Set Variable    Google Search Console
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the MySql Test integration
    [Documentation]  This is test 18
    [Tags]  test18
    ${Integration_name}=    Set Variable    MySql Test
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Shopify Test integration
    [Documentation]  This is test 19
    [Tags]  test19
    ${Integration_name}=    Set Variable    Shopify Test
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Hubspot integration
    [Documentation]  This is test 20
    [Tags]  test20
    ${Integration_name}=    Set Variable    Hubspot
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the File Cloud Test integration
    [Documentation]  This is test 21
    [Tags]  test21
    ${Integration_name}=    Set Variable    File Cloud Test
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the PostrgreSQL integration
    [Documentation]  This is test 22
    [Tags]  test22
    ${Integration_name}=    Set Variable    PostrgreSQL
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Amazon s3 integration
    [Documentation]  This is test 23
    [Tags]  test23
    ${Integration_name}=    Set Variable    Amazon s3
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Outbrain s3 integration
    [Documentation]  This is test 24
    [Tags]  test24
    ${Integration_name}=    Set Variable    Outbrain
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Mongo Db integration
    [Documentation]  This is test 25
    [Tags]  test25
    ${Integration_name}=    Set Variable    Mongo
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s

Testing of the Klaviyo integration
    [Documentation]  This is test 26
    [Tags]  test26
    ${Integration_name}=    Set Variable    Klaviyo
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Begin Login
    Sleep  20s
    FrontOfficeApp.Enter to the integration    ${Integration_name}
    FrontOfficeApp.Get generic table data
    FrontOfficeApp.Loop inside logs button
    Sleep  5s