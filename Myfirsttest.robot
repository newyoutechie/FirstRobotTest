*** Settings ***
Documentation    My first test to search item on Amazon
Library    SeleniumLibrary

*** Variables ***
${url}       https://www.amazon.in/
${browser}    chrome

*** Test Cases ***

Test amazon search functionality
    Open Browser    ${url}    ${browser}
    Input Text    xpath://input[@id='twotabsearchtextbox']    Books
    Click Element    xpath://input[@id='nav-search-submit-button']
    Page Should Contain    Results
    Close Browser
