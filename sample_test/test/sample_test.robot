*** Settings ***
Documentation     A test suite with a single Gherkin style test.
Resource          ../Resources/sample_resource.robot
Variables         ../sample_variables.py
Test Teardown     Close Browser

*** Test Cases ***
Sample Test - Google Search
    [tags]  sample_test
    Given open browser to google
    When user types an item in search bar
    Then page is open

*** Keywords ***
User types an item in search bar
    User searches for    ${SOMETHING}