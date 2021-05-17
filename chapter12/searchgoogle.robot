*** Settings ***
Library     SeleniumLibrary
Library     ScreenCapLibrary
Test Setup    Start Video Recording
Test Teardown    Stop Video Recording
Suite Teardown    Close All Browsers

*** Variables ***
${BROWSER}  headlesschrome
${NOTHEADLESS}=    "headlesschrome" not in "${BROWSER}"

*** Test Cases ***
Search On Google
     Create Webdriver    Chrome    executable_path=C:/Users/yo/AppData/Local/rasjani/WebDriverManager/bin/chromedriver.exe
     Go To   http://www.google.com 
     Run Keyword If    ${NOTHEADLESS}    Wait Until Page Contains Element   cnsw
     Run Keyword If    ${NOTHEADLESS}    Select Frame   //iframe
     Run Keyword If    ${NOTHEADLESS}    Submit Form      //form
     Unselect Frame
     Input Text     name=q   Stephen\ Hawking
     Press Keys     name=q   SPACE
     Press Keys     name=q   ENTER
     Wait Until Page Contains Element   id=res
     Page Should Contain   Wikipedia
     Close Window
