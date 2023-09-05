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

Sample Test - Google Search Random Text
    [tags]  sample_random_test
    Given open browser to google
    When user types a random item in search bar
    Then page is open


*** Keywords ***
User types an item in search bar
    User searches for    ${SOMETHING}