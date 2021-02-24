*** Settings ***
Library    SeleniumLibrary    
*** Keywords ***
MyLoginKeyword
  Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    gc
  Maximize Browser Window
  Input Text    id=txtUsername    Admin    
  Input Password    id=txtPassword    admin123    
  Click Button    id=btnLogin