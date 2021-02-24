*** Settings ***
Library    SeleniumLibrary
Resource    ../Ressources/Ressource1.robot

Documentation    Creation de Keywords dans un fichier ressource a partir des KW de la librairie Selenium

*** Test Cases ***
TC001 Login_Test
  [Documentation]    Premier test
  MyLoginKeyword      
  Click Link    id=welcome
  Sleep    3s        
  Click Link    link=Logout
  Close Browser
  
TC002_SalesForce
  MyLoginKeyword    
  Click Button    name=Login   
  Close Browser 