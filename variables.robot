*** Settings ***
Documentation         Aqui neste arquivos estarão presentes todos os tipos de variáveis que 
...                   iremos estudar ao longo do treinamento.

Library               SeleniumLibrary
Test Setup            Abrir o meu navegador
Test Teardown         

*** Variables ***
#Variável do tipo simples
${NOME}        TALITA FERREIRA DA ROCHA
#Váriavel do tipo lista
@{FRUTAS}      Banana    Maçã    Abacaxi
#Variável do tipo dicionário
&{CARRO_MODELO}        
...            Marca=Nissan    
...            Cor=Preto    
...            Modelo=Sentra SL    
...            Ano=2016

${URL}        https://www.google.com.br/
${BROWSER}    chrome
*** Test Cases ***
Validar abertura do Browser
    [Tags]        BROWSER
    Abrir o meu navegador
    Fechar Browser

Validar abertura do Facebook
    [Tags]        FACEBOOK
    Abrir o meu navegador
    Fechar Browser

Validar soma de dois números
    [Tags]        SOMA
   Somar dois números    588    888  



*** Keywords ***
Abrir o meu navegador
    Open Browser        ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar Browser
    Sleep    5
    Close Browser

Somar dois números
    [Arguments]     ${NUM_A}    ${NUM_B} 
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]        ${SOMA}     
    Log To Console    ${SOMA}

