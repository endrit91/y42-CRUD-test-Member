*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/IntegrationTest.robot
Resource  ./PO/Login.robot

*** Variables ***
#${import_status}=    set variable  ready

*** Keywords ***
Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Begin Login
    Login.Enter Log In data

Enter to the integration
    [arguments]    ${Integration_name}
    IntegrationTest.Verify Page Loaded
    IntegrationTest.Select integration
    #IntegrationTest.Get number of tables per integration
Get generic table data
    IntegrationTest.Get total tables statistics and validate
Loop inside logs button
    IntegrationTest.Enter each logs button
    #Run Keyword If    "${import_status}" == "invalid"    Custom Keyword From If


