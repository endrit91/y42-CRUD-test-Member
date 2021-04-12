*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${TEAM_HEADER_LABEL} =  css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***
#Verify Page Loaded
  #  wait until page contains element  ${TEAM_HEADER_LABEL}

Enter Log In data
    Enter email
    Enter password
    Submit

Enter email
    Input Text  id=mat-input-0  maciri2464@wpsavy.com

Enter password
    Input Text  id=mat-input-1  91Ferrari81!

Submit
    Click Button  xpath=//*[@id="smart-btn"]


#Validate Page Contents
    # this fails in chrome but passes in Edge
    #element text should be  ${TEAM_HEADER_LABEL}  Our Amazing Team

   # ${ElementText} =  get text  ${TEAM_HEADER_LABEL}
    #should be equal as strings  ${ElementText}  Our Amazing Team  ignore_case=true
