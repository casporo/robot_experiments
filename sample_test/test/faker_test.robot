*** Settings ***
Force Tags        faker
Test Timeout      1 minute
Library           FakerLibrary

*** Test Cases ***
Can Get Fake Name
    ${name}=    FakerLibrary.Name
    Should Not Be Empty    ${name}
    Log To Console    ${name}

Can Get Fake Email
    ${email}=    FakerLibrary.Email
    Should Not Be Empty    ${email}
    Log To Console    ${email}

Can Get Fake Company Email
    ${company email}=    FakerLibrary.Company Email
    Should Not Be Empty    ${company email}
    Log To Console    ${company email}

Can Get Fake First Name
    ${first name}=    FakerLibrary.First Name Nonbinary
    Should Not Be Empty    ${first name}
    Log To Console    ${first name}

Can Get Fake Last Name
    ${last name}=    FakerLibrary.Last Name Nonbinary
    Should Not Be Empty    ${last name}
    Log To Console    ${last name}

Can Get Fake Phone Number
    ${phone no}=    Basic Phone Number
    Log To Console    ${phone no}