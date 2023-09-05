*** Settings ***
Library    SeleniumLibrary    plugins=CryptoLibrary.Plugin


*** Variables ***
${Admins-Password}=    crypt:fQ5Iqn/j2lN8rXwimyz0JXlYzD0gTsPRwb0YJ3YSvDchkvDpfwYDmhHxsZ2i7bIQDlsWKJVhBb+Dz4w=


*** Test Cases ***
Decrypt as Plugin
    Open Browser      http://www.keyword-driven.de
    Input Text        input_username    admin
    Input Password    input_password    ${Admins-Password}