*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${name_integration}=    //div[contains(., "Stripe Int")]
${Integration_NAVIGATION_ELEMENT} =    Integrations
${log_button_locator}=  //button[contains(@class,'mat-focus-indicator mat-tooltip-trigger border aligner mat-button mat-button-base')]
${close_logs_button}=  //button[contains(@class,'mat-focus-indicator position-absolute bg-white z-depth-1 mat-icon-button mat-button-base')]
${table_title_locator}=    //div[contains(@class, "table-title")]
${table_import_id_locator}=     //td[contains(@class, "mat-tooltip-trigger text-right w-50 cursor-pointer")]
${import_status_locator}=     //div[contains(@class, "mat-tooltip-trigger badge-state")]
${message_rows}=  //div[contains(@class, "ag-cell ag-cell-not-inline-editing ag-cell-auto-height cell-wrap-text color-grey-666666 ag-cell-value")]
#${Integration_name}=    Hubspot


*** Keywords ***
Verify Page Loaded
    wait until page contains   ${Integration_NAVIGATION_ELEMENT}
    Sleep  5s
Select integration
    [arguments]    ${Integration_name}

    Input Text  id=searchInput  Hubspot
    Mouse Over    //*[contains(text(), "${Integration_name}")]
    sleep  10s

    click element  //*[contains(text(), "${Integration_name}")]
    Sleep  15s

    #${Count}=    Get Element Count  //div[contains(text(), "INVALID")]
Get total tables statistics and validate
    ${total_tables}=    Get Element Count  ${log_button_locator}
   # ${number_of_tables}    Should Be True    ${total_tables} == 4
Enter each logs button

    @{Log_buttons}=    Get WebElements   ${log_button_locator}


    FOR  ${log_button}  IN  @{Log_buttons}


        #Log    ${log_button}
        click element    ${log_button}
        sleep    20s
        ${table_title}=   Get text    ${table_title_locator}
        ${table_import_id}=    Get text    ${table_import_id_locator}
        ${last_message}=    Get Element Count  ${message_rows}
        ${message_rows_list}=    Get WebElements    ${message_rows}
        ${import_status}=   Get text    ${import_status_locator}



        ${last_log}=   Get text      (${message_rows})[1]
        Run Keyword If  "${import_status}" == "invalid"    wait until page contains   empty, 404
        Run Keyword If  "${import_status}" == "pending"    wait until page contains   empty, 404






        click button    ${close_logs_button}


    END

