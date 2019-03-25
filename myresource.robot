*** Settings ***
Library           SeleniumLibrary
Library           Telnet
Library           Screenshot
Library           OperatingSystem

*** Variables ***
${SERVER}         https://www.baidu.com
${BROWSER}        Firefox
${DELAY}          0
${SEARCH_TEXT}    搬运工

*** Keywords ***
Open Browser To Server
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Server Should Be Open

Server Should Be Open
    Title Should Be     百度一下，你就知道

Result Page Should Be Open
    Title Should Be     搬运工_百度搜索

Submit Search
    Click button    su

Input Search Text
    InputText    kw    ${SEARCH_TEXT}
