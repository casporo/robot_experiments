*** Settings ***
Documentation     A test suite with a single Gherkin style test.
Resource          ../Resources/sample_resource.robot
Variables         ../sample_variables.py

Test Teardown     Close Browser


*** Test Cases ***
Sample Test - Factory receiver
    [tags]  sample_test

    Given this is a test statement

*** Keywords ***
