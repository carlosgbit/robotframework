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
    \    Open Browser	                ${URL}                ${BROWSER_1}
    \    Maximize Browser Window
    \    Capture Page Screenshot        ${SCREENSHOT_PATH_1}imag-{index}.png
    \    Set Selenium Speed             ${DELAY}
    \    Input Text	                    i0116                 @{user}[0]
    \    Sleep                          5s
    \    Capture Page Screenshot        ${SCREENSHOT_PATH_1}imag-{index}.png
    \    Click Button	                idSIButton9
    \    Set Selenium Speed             ${DELAY}
    \    Input Text	                    i0118                 @{user}[1]
    \    Sleep                          5s
    \    Capture Page Screenshot        ${SCREENSHOT_PATH_1}imag-{index}.png
    \    Click Button	                idSIButton9
    \    Sleep                          15s
    \    Capture Page Screenshot        ${SCREENSHOT_PATH_1}imag-{index}.png
    \    Close Browser
    Log    Exited