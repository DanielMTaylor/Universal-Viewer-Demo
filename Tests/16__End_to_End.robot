*** Settings ***
Documentation    Suite description
Library           Process
Suite Teardown    Terminate All Processes    kill=True

*** Test Cases ***
Example
    Start Process    program    arg1    arg2    alias=First
    ${handle} =    Start Process    command.sh arg | command2.sh    shell=True    cwd=/path
    ${result} =    Run Process    ${CURDIR}/script.py
    Should Not Contain    ${result.stdout}    FAIL
    Terminate Process    ${handle}
    ${result} =    Wait For Process    First
    Should Be Equal As Integers    ${result.rc}    0

