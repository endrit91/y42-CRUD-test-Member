*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Integration_name} =    //div[contains(., "Stripe Int")]
${Integration_NAVIGATION_ELEMENT} =    Stripe Int
${log_button_locator}=  //button[contains(@class,'mat-focus-indicator mat-tooltip-trigger border aligner mat-button mat-button-base')]
${close_logs_button}=  //button[contains(@class,'mat-focus-indicator position-absolute bg-white z-depth-1 mat-icon-button mat-button-base')]
${table_title_locator}=    //div[contains(@class, "table-title")]
${table_import_id_locator}=     //td[contains(@class, "mat-tooltip-trigger text-right w-50 cursor-pointer")]
${import_mode_locator}=    //div[contains(@class, "w-100 text-right ng-star-inserted")]
${import_status_locator}=     //div[contains(@class, "mat-tooltip-trigger badge-state")]
${message_rows}=  //div[contains(@class, "ag-cell ag-cell-not-inline-editing ag-cell-auto-height cell-wrap-text color-grey-666666 ag-cell-value")]
#${message_rows}=  //div[contains(@class, "ag-cell ag-cell-not-inline-editing ag-cell-auto-height cell-wrap-text color-grey-666666 ag-cell-value")]
${name_integration}=    Hubspot


*** Keywords ***
Verify Page Loaded
    wait until page contains   ${Integration_NAVIGATION_ELEMENT}
    Sleep  5s
Select integration


    Input Text  id=searchInput  ${name_integration}
    #Mouse Over    //*[contains(text(), "${name_integration}")]
    #sleep  10s

    click element  //*[contains(text(), "${name_integration}")]
    Sleep  15s

    #${Count}=    Get Element Count  //div[contains(text(), "INVALID")]
Get total tables statistics and validate
    ${total_tables}=    Get Element Count  ${log_button_locator}
   # ${number_of_tables}    Should Be True    ${total_tables} == 4
Enter each logs button

    @{Log_buttons}=    Get WebElements   ${log_button_locator}


    FOR  ${log_button}  IN  @{Log_buttons}

        #$text=    Get text    ${element}
        Log    ${log_button}
        click element    ${log_button}
        sleep    10s
        ${table_title}=   Get text    ${table_title_locator}
        ${table_import_id}=    Get text    ${table_import_id_locator}
        ${import_mode}=   Get text    ${import_mode_locator}
        ${last_message}=    Get Element Count  ${message_rows}
        ${message_rows_list}=    Get WebElements    ${message_rows}
        ${import_status}=   Get text    ${import_status_locator}


        #${import_status}=   Element Text Should Be    ${import_status_locator}    invalid

        ${last_log}=   Get text      (${message_rows})[1]
        Run Keyword If  "${import_status}" == "invalid"    wait until page contains   empty, 404
        Run Keyword If  "${import_status}" == "pending"    wait until page contains   empty, 404


        #Custom Keyword From If
# [Documentation]    Keywords documentation
        #    Continue keyword

       # Custom Keyword From If




        click button    ${close_logs_button}


    END

          #${last_message}=    Evaluate    ${last_message} + 10



        #Check if invalid
        #Run Keyword If  "${import_status}" == "invalid"    function
         # function
        #Continue For Loop If    "${import_status}" == "invalid"

       # IF    "${import_status}" == "invalid"
        #    my keyword
       # ELSE
        #    next keyword
       # END

       # my keyword
          #  ${last_log}=  Get text    (${message_rows})[last()]
        #next keyword


        #FOR  ${index}  IN RANGE  ${count_message_rows}  ${count_message_rows_1}
                #Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
            #Input Text    //*[@id="search"]/input    robot framework
               # Sleep    3

               # ${last_log}=   Get text      (${message_rows})[last()]


        #END




    #should Be True  ${count} > 0

   # ${link_count}=  Evaluate  ${link_count} + ${1}
   # FOR  ${index}  IN RANGE  1  ${link_count}

    #    Log    my first ${index}
    #    xpath=  (//button[contains(@class,'mat-focus-indicator mat-tooltip-trigger border aligner mat-button mat-button-base)])[${index}]

    #END

