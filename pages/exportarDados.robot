*** Settings ***
Documentation       Tela de exportação de dados

*** Variable ***	
${BTN_EXPORTAR} =            id = br.com.dudstecnologia.cadastrodeclientes:id/btnExportar
${BTN_BACKUP} =              id = br.com.dudstecnologia.cadastrodeclientes:id/btnBackup
${BTN_RESTAURAR} =           id = br.com.dudstecnologia.cadastrodeclientes:id/btnRestaurar



*** Keywords ***
Inserir Dados Básicos
    Wait Until Page Contains Element    ${RD_BASICO}
    Click Element                       ${RD_BASICO}
    Input Text                          ${EDIT_NOME}        João Silva
    Input Text                          ${EDIT_DATA}        01/01/1990        
    Input Text                          ${EDIT_RG}          36.791.254-5
    Input Text                          ${EDIT_CPF}         561.868.980-40
    Input Text                          ${EDIT_ENDERECO}    Rua dos Bobos
    Input Text                          ${EDIT_NUMERO}      0
    Input Text                          ${EDIT_BAIRRO}      Dos Sonhos
    Input Text                          ${EDIT_CEP}         56328-070
    Input Text                          ${EDIT_CIDADE}      Maravilhosa
    #Click Element                       ${SPINNER_UF}
    #Input Text                          ${SPINNER_UF}       PE
    Click Element                       ${SPINNER_UF}
    Wait Until Page Contains Element    ${TEXTVIEW_UF}
    #Scroll Down To Text                 GO
    Click Element                       ${TEXTVIEW_UF}
    Input Text                          ${EDIT_TELEFONE1}   2345678
    Input Text                          ${EDIT_TELEFONE2}   988776622
    Input Text                          ${EDIT_EMAIL}       joaosilva@mail.com
    Input Text                          ${EDIT_OBS}         NEON > ALL

Saval Formulário
    Click Element                           ${BTN_SALVAR}

Validar Mensagem Sucesso
    [Arguments]                             ${mensagem_sucesso}
    Wait Until Page Contains Element        ${ANDROID_MESSAGE}
    Element Should Contain Text             ${ANDROID_MESSAGE}  ${mensagem_sucesso}
    Click Element                           ${ANDROID_BTN_OK}
    Go Back

Validar Nome Cliente
    [Arguments]                             ${nome}
    Wait Until Page Contains Element        ${EDIT_NOME}
    Element Should Contain Text             ${EDIT_NOME}        ${nome}

Atulizar Dados Cliente
    [Arguments]                             ${nome}     ${email}
    Wait Until Page Contains Element        ${EDIT_NOME}
    Input Text                              ${EDIT_NOME}        ${nome}
    Input Text                              ${EDIT_EMAIL}       ${email}

    

