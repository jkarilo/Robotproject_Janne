*** Settings ***
Library    SeleniumLibrary  
Suite Setup    Log    I am inside Test Suite Setup 
Suite Teardown    Log    I am insid Test Suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Tear Down  
Default Tags    Sanity  

*** Test Cases ***
MyFirstTest
    Log    Hello World...  
    
FirstSeleniumTest
    Open Browser    https://google.com  chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    Automation step by step
    Press Keys    name=q  ENTER
#    Click Button    name=btnK    
    Sleep    2        
    Close Browser 
    Log    Test Completed  
    
SampleLoginTest
    [Documentation]  This is a sample Login Test
    Open Browser     ${URL}    chrome
    Set Browser Implicit Wait    5
    LoginKW
    Click Element    id=welcome
    Click Element    link=Logout
    Close Browser
    Log    Test Completed 
    Log    This test was execured by %{username} on %{os}
    
*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/ 
@{CREDENTIALS}    Admin    admin123 
&{LGOINDATA}    username=Admin    password=admin123   

*** Keywords ***
LoginKW
    Input Text       id=txtUsername    @{CREDENTIALS}[0]
    Input Password   id=txtPassword    &{LGOINDATA}[password]
    Click Button     id=btnLogin
    

    
            
        