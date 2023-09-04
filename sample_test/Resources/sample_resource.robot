*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library    Collections
Library           FakerLibrary
Variables         ../sample_variables.py

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        Chrome
${DELAY}          0.2
${TYPE OF FILE}   png
${SCREENSHOT PATH}  output/sample_test
&{SEARCH}  SEARCH FIELD=//*[@id="APjFqb"]  SEARCH BUTTON=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[2]/div[5]/center/input[1]

&{DICTIONARY}  s1=screenshot1

*** Keywords ***
Open Browser To Google
    Open Browser    ${GOOGLE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

User searches for
    [Arguments]    ${SOMETHING}
    Wait Until Page Contains Element   ${SEARCH}[SEARCH FIELD]
    Input Text    ${SEARCH}[SEARCH FIELD]    ${SOMETHING}
    Press Keys    ${SEARCH}[SEARCH FIELD]    RETURN

When user types a random item in search bar
    Wait Until Page Contains Element   ${SEARCH}[SEARCH FIELD]
    ${random_input}=    Random Letters
    Input Text    ${SEARCH}[SEARCH FIELD]    ${random_input}

Page is Open
     Sleep    10s
     Set Screenshot Directory  ${SCREENSHOT PATH}
     Capture Page Screenshot  ${DICTIONARY}[s1].${TYPE OF FILE}
     Log To Console  ${DICTIONARY}[s1] taken ${\n}