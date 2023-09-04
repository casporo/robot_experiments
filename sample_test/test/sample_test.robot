*** Settings ***
Documentation     A test suite with a single Gherkin style test.
Resource          ../Resources/resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Valid Login
    Given browser is opened to login page
    When user "corleone39715@outlook.com" logs in with password "Welcome@1234"
    Then welcome page should be open

*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Input guest username    ${username}
    Input guest password   ${password}
    Submit credentials