*** Settings ***
Documentation     A test suite with a single test for valid login.
...               This test has a workflow that is created using keywords in the imported resource file.
Resource          myresource.robot

*** Test Cases ***
Valid Search
    Open Browser To Server
    Input Search Text
    Submit Search
