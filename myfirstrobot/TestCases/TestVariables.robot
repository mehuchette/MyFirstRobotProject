*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
#Variable scalaire = une seule valeur
${MonURL} =    https://login.salesforce.com/?locale=ca
${MonBrowser} =    gc

#variable de type liste = contient une liste de valeurs qui commence par la valeur 0
#@{MesLogins} =    Meh    Quinn

#Variables de type dictionnaire = variables sont definies sous forme de paires de valeurs
&{MesLoginsDictionnaire} =    username=Meh    password=Quinn

*** Test Cases ***
TC001_LoginTest
    Open Browser    ${MonURL}    ${MonBrowser}
    Maximize Browser Window
    Input Text    xpath=//input[@id='username']    &{MesLoginsDictionnaire}[username]   #@{MesLogins}[0] 
    Input Password    xpath=//input[@id='password']    &{MesLoginsDictionnaire}[password]    #@{MesLogins}[1]
    Sleep    3s    
    Click Button    xpath=//input[@id='Login']     
    Log To Console    Afficher dans la console le systeme dexploitation %{os} et le nom d'utilisation %{username}  
             