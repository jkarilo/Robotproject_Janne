*** Settings ***
Library    SeleniumLibrary  

Suite Setup    Log     I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test teardown

Default Tags    sanity       
#Change Test
*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...  
    
FirstSeleniumTest
    Open Browser    https:google.com    chrome
    Set Browser Implicit Wait    5
    Click Button    I agree
    Input Text    name=q    Automation step by step  
    Press Keys    name=q    ENTER
    #Click Button    name=btnK
    Sleep    2    
    Close Browser
    Set Tags    regression1
   # Remove tags    regression1
    
SampleLoginTest
    [Documentation]    This is a sample login Test
    Open Browser      ${URL}    chrome
    Set Browser Implicit Wait    5
    LoginKW
    sleep    5
    Click Element     id=welcome  
    Click Element     link=Logout  
    close Browser
    Log               Test Completed
    Log               This test was executed by %{username} on %{os}

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
#@{CREDENTIALS}   1 Admin    admin123
${LGOINDATA}        Admin  
${LGOINDATA2}       admin123  


*** Keywords ***
LoginKW
    Input Text        id=txtUsername    ${LGOINDATA}
    Input Password    id=txtPassword    ${LGOINDATA2}
    Click Button      id=btnLogin       
    

    