*** Settings ***
Library     SeleniumLibrary
Suite Setup    Log    I AM INSIDE TEST SUITE SETUP
Suite Teardown    log    I AM INSIDE TEST SUITE TEARDOWN
Test Setup    Log    I AM INSIDE TEST SETUP
Test Teardown    log    I AM INSIDE TEST TEARDOWN  

Default Tags    sanity

*** Variables ***

${URL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
@{CREDENTIALS}    Admin    admin123
&{LGOINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text    name=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LGOINDATA}[password]    
    Click Button    id=btnLogin
        

*** Test Cases ***    
MyFirstTest
    [Tags]    smokk
    Log     1 TEST !!!
MySecondTest
    Log     2 TEST !!!   
    [Tags]    smokk5
    Set Tags    regression3
MyThirdTest
    Log     3 TEST !!!   
MyForthTest
    Log     4 TEST !!! 
# FirstSeleniumTest
     # Open Browser    https://google.com    chrome
     # Set Browser Implicit Wait    5
     # Click Button    id=zV9nZe
     # Input Text    name=q    Meteo 
     # Press Key    name=q    \ue007
     # #Click Button    name=btnK
     # Sleep    2
     # Log    Test Complete   

# SampleLogininTest
    # [Documentation]    Login test
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # #Input Text    name=txtUsername    @{CREDENTIALS}[0]
    # #Input Password    id=txtPassword    &{LGOINDATA}[password]    
    # #Click Button    id=btnLogin
    # #Input Password    id=txtPassword    @{CREDENTIALS}[1]
    # #Input Text    name=txtUsername    Admin
    # #Input Password    id=txtPassword    admin123
    # #Click Button    id=btnLogin
    # Click Element    id=welcome
    # #Click Element    link=Logout
    # Click Element    link=About
    # #Close Browser
    # Log    Test 2 finish
    # Log    This test was excuted by %{username} on %{os}
    

