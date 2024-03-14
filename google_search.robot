*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${SEARCH_TERM}    robot framework
${SEARCH_RESULT}    Automate
${SEARCH_RESULT-2}    User

*** Test Cases ***
Search Google and Verify Results-1
    Open Google
    Input Search Term
    Press Enter Google Search
    Verify Search Results
    Close Browser

Search Google and Verify Results-2
    Open Google
    Input Search Term
    Press Enter Google Search
    Verify Search Results-2
    Close Browser

Search Google and Verify Results-3
    Open Google
    Input XSearch Term
    Press Enter Google Search
    Verify Search Results-2
    Close Browser

Search Yahoo and Verify Results-4
    Open Yahoo
    Input Search-Yahoo Term
    Press Enter Yahoo Search
    Verify Search Results-Yahoo
    Close Browser

*** Keywords ***
Open Google
    Open Browser    https://www.google.com    ${BROWSER}

Input Search Term
    Input Text      name=q                 ${SEARCH_TERM}
Input XSearch Term
    Input Text      xpath://*[@name="q"]    ${SEARCH_TERM}
Press Enter Google Search
    Press Keys    name=q    ENTER

Verify Search Results
    Wait Until Page Contains    ${SEARCH_RESULT}
    Page Should Contain    ${SEARCH_RESULT}

Verify Search Results-2
    Wait Until Page Contains    ${SEARCH_RESULT}
    Page Should Contain    ${SEARCH_RESULT-2}

Open Yahoo
    Open Browser    https://www.yahoo.com/    ${BROWSER}

Input Search-Yahoo Term
    Input Text      name=p                 ${SEARCH_TERM}

Press Enter Yahoo Search
    Press Keys    name=p    ENTER

Verify Search Results-Yahoo
    Wait Until Page Contains    ${SEARCH_RESULT}
    Page Should Contain    ${SEARCH_RESULT}
