*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${log_in_with_google} =  Log In with Google

*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    wait until page contains   ${log_in_with_google}