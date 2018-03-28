*** Settings ***
Library          Selenium2Library
Suite Setup      Open Chrome With Blank Page
Suite Teardown   Close All Browsers

*** Variables ***
${headless}  n

*** Test Cases ***
Open Untrusted Site
    Go To  https://untrusted-root.badssl.com/
    Page Should Contain  The certificate for this site is signed using an untrusted root.

*** Keywords ***
Open Chrome With Blank Page
    Open Browser  data:,  browser=chrome