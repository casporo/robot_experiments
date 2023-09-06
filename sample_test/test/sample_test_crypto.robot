*** Settings ***
Documentation     A test suite with a single Gherkin style test.
Resource          ../Resources/sample_resource.robot
Library           SeleniumLibrary
Library           CryptoLibrary    variable_decryption=true
Variables         ../sample_variables.py
Test Teardown     Close Browser

*** Test Cases ***
Sample Test - Google Search with Encryption
    [tags]  sample_test_encryption
    Given open browser to google
    When user types an item in search bar
    Then page is open

*** Keywords ***
User types an item in search bar
    User searches for    ${TEST_CRYPTO_STRING}