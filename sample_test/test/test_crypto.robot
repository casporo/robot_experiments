*** Settings ***
Library    SeleniumLibrary
Library    CryptoLibrary    variable_decryption=true


*** Variables ***
${Admins-Password}=    crypt:fQ5Iqn/j2lN8rXwimyz0JXlYzD0gTsPRwb0YJ3YSvDchkvDpfwYDmhHxsZ2i7bIQDlsWKJVhBb+Dz4w=


*** Test Cases ***
Decrypt as Plugin
    ${plain_text}=    Get Decrypted Text    ${Admins-Password}
    Log To Console    ${plain_text}
    #Input Password    input_password    ${Admins-Password}