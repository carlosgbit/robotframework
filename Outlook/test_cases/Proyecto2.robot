*** Settings ***
Documentation    CSV examples for Robot Framework.
Library         CSVLibrary
Library         Selenium2Library
Library         BuiltIn

Resource          ../resources.robot

*** Test Cases ***
Recorrer csv y probar el correo de outlook
#   @{list}=  read csv file to list  ${CURDIR}${/}data_1.csv
    ${all users}=    read csv file to list    ${CSV_PATH}
    :FOR  ${user}   in   @{all users}
    \    Open Browser	                ${URL}                    ${BROWSER_1}
    \    Maximize Browser Window
    \    Capture Page Screenshot        ${CAPTURAS}
    \    Set Selenium Speed             ${DELAY}
    \    Input Text	                    i0116                     @{user}[0]
    \    Sleep                          5s
    \    Capture Page Screenshot        ${CAPTURAS}
    \    Click Button	                idSIButton9
    \    ${status}=  Run keyword and ignore error  Wait Until Page Contains  Esta cuenta de Microsoft no existe.  5
    \    Run Keyword if  '${status}' == 'FAIL'  
    \    Capture Page Screenshot        ${CAPTURAS}     
    \    Close Browser
    Log    Exited