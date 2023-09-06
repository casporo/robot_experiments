*** Settings ***
Library           SeleniumLibrary
Library           CryptoLibrary    variable_decryption=true
Variables         ../sample_variables.py

*** Test Cases ***
Decrypt as Plugin
    Suppress Logging                                  #disable Robot Framework logging
    ${var}=    set Variable   ${TEST_CRYPTO_STRING}
    Log To Console    ${var}
    Unsuppress Logging                                #enable Robot Framework logging
    Log To Console    ${TEST_CRYPTO_STRING}
    #${plain_text}=    Get Decrypted Text    ${Admins-Password}
    #Log To Console    ${plain_text}
    #Input Password    input_password    ${Admins-Password}