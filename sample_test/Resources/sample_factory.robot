*** Settings ***
Library           FakerLibrary

*** Keywords ***
Receives text from generated file
    ${test_name}=    FakerLibrary.Name
    Should Not Be Empty    ${test_name}
    Return From Keyword  ${test_name}