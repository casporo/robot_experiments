*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library    Collections


*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        Chrome
${DELAY}          0.2
${LOGIN URL}      https://mcstaging.thecosmeticscompanystore.com.hk/login-2022-hk
${WELCOME URL}    https://mcstaging.thecosmeticscompanystore.com.hk/?login_successful=true
${TYPE OF FILE}   png
${SCREENSHOT PATH}  output/sample_test
${LOGIN FIELD}    //*[@id="email"]
${PASSWORD FIELD}  //*[@id="password"]
&{LOGIN}  guest login button=//*[@id="maincontent"]/div/div/div[2]/div/div[1]/div/main/section/div[1]/article[1]/form/div/button
&{DICTIONARY}  s1=screenshot1  s2=screenshot2

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Login 2022 HK

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input guest username
    [Arguments]    ${USERNAME}
    Wait Until Page Contains Element   ${LOGIN FIELD}
    Input Text    ${LOGIN FIELD}    ${USERNAME}

Input guest password
    [Arguments]    ${PASSWORD}
    Wait Until Page Contains Element   ${PASSWORD FIELD}
    Input Text    ${PASSWORD FIELD}  ${PASSWORD}
    Set Screenshot Directory  ${SCREENSHOT PATH}
    Capture Page Screenshot  ${DICTIONARY}[s1].${TYPE OF FILE}
    Log To Console  ${DICTIONARY}[s1] taken ${\n}

Submit Credentials
    Click Button    ${LOGIN}[guest login button]
    Log To Console    Guest login button clicked ${\n}

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Element Should Be Visible  //html/body/div[2]/header/div[3]/div/div/div[1]
    Title Should Be    Home page
    Set Screenshot Directory  ${SCREENSHOT PATH}
    Capture Page Screenshot  ${DICTIONARY}[s2].${TYPE OF FILE}
    Log To Console  ${DICTIONARY}[s2] taken ${\n}