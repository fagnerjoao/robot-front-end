*** Settings ***
Documentation       Tela inicial do app

*** Variable ***
${HOME_TXT} =   id = br.com.dudstecnologia.cadastrodeclientes:id/txtNenhumCliente

*** Keywords ***
Validar Tela inicial
    Wait Until Page Contains Element    ${HOME_TXT}