*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/IntegrationCRUD.robot
Resource  ./PO/Login.robot

*** Variables ***
#${import_status}=    set variable  ready

*** Keywords ***
Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Begin Login
    Login.Enter Log In data

Crud test of integrations
    [arguments]    ${Integration_name}
    IntegrationCRUD.Verify Page Loaded
    IntegrationCRUD.Create integration    ${Integration_name}
    IntegrationCRUD.Read integration
    IntegrationCRUD.Update integration
    IntegrationCRUD.Delete integration


