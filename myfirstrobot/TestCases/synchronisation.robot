*** Settings ***
Library    SeleniumLibrary
Resource    ../Ressources/Ressource1.robot

*** Test Cases ***
TC001_Synchronisation
  [Documentation]    Premier test
  ${default selenium speed} =    Get Selenium Speed
  Log To Console    ${default selenium speed}    
  MyLoginKeyword      
  Click Link    id=welcome
  # Sleep    10s      
  Set Selenium Speed    4s  
  Click Link    link=Logout
  Close Browser