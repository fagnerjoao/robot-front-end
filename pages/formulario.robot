*** Settings ***
Documentation       Tela inicial de cadastro do app

*** Variable ***	
${RD_BASICO} =              id = br.com.dudstecnologia.cadastrodeclientes:id/rdBasico
${RD_COMPLETO} =            id = br.com.dudstecnologia.cadastrodeclientes:id/rdCompleto
${IMG_CLIENTE} =            id = br.com.dudstecnologia.cadastrodeclientes:id/imagemCliente	
${EDIT_NOME} =                id = br.com.dudstecnologia.cadastrodeclientes:id/editNome
${EDIT_RG} =                id = br.com.dudstecnologia.cadastrodeclientes:id/editRg
${EDIT_ORGAO} =             id = br.com.dudstecnologia.cadastrodeclientes:id/editOrgao
${EDIT_CPF} =               id = br.com.dudstecnologia.cadastrodeclientes:id/editCpf
${EDIT_DATA} =               id = br.com.dudstecnologia.cadastrodeclientes:id/editData
${EDIT_MAE} =               id = br.com.dudstecnologia.cadastrodeclientes:id/editMae
${EDIT_PAI} =               id = br.com.dudstecnologia.cadastrodeclientes:id/editPai
${EDIT_ENDERECO} =          id = br.com.dudstecnologia.cadastrodeclientes:id/editEndereco
${EDIT_NUMERO} =            id = br.com.dudstecnologia.cadastrodeclientes:id/editNumero
${EDIT_BAIRRO} =            id = br.com.dudstecnologia.cadastrodeclientes:id/editBairro
${EDIT_CEP} =               id = br.com.dudstecnologia.cadastrodeclientes:id/editCep
${EDIT_CIDADE} =            id = br.com.dudstecnologia.cadastrodeclientes:id/editCidade
${SPINNER_UF} =             id = br.com.dudstecnologia.cadastrodeclientes:id/spinnerEstados
${TEXTVIEW_UF} =            xpath = //*[@text='BA']
${EDIT_NATURALIDADE} =      id = br.com.dudstecnologia.cadastrodeclientes:id/editNaturalidade
${EDIT_TELEFONE1} =         id = br.com.dudstecnologia.cadastrodeclientes:id/editTelefone1
${BTN_LIGAR1} =             id = br.com.dudstecnologia.cadastrodeclientes:id/btnLigar1
${EDIT_TELEFONE2} =         id = br.com.dudstecnologia.cadastrodeclientes:id/editTelefone2
${BTN_LIGAR2} =             id = br.com.dudstecnologia.cadastrodeclientes:id/btnLigar2
${EDIT_EMAIL} =             id = br.com.dudstecnologia.cadastrodeclientes:id/editEmail
${BTN_ENVIAR_EMAIL} =       id = br.com.dudstecnologia.cadastrodeclientes:id/btnEnviarEmailedit
${EDIT_OBS} =               id = br.com.dudstecnologia.cadastrodeclientes:id/editObs
${EDIT_EMPRESA} =           id = br.com.dudstecnologia.cadastrodeclientes:id/editEmpresa
${EDIT_CARGO} =             id = br.com.dudstecnologia.cadastrodeclientes:id/editCargo
${EDIT_ENDERECO_EMPRESA} =  id = br.com.dudstecnologia.cadastrodeclientes:id/editEnderecoEmpresa	
${EDIT_CEP_EMPRESA} =       id = br.com.dudstecnologia.cadastrodeclientes:id/editCepEmpresa
${EDIT_TELEFONE_EMPRESA} =  id = br.com.dudstecnologia.cadastrodeclientes:id/editTelefoneEmpresa
${EDIT_DATA_ADM} =          id = br.com.dudstecnologia.cadastrodeclientes:id/editDataAdmissao
${EDIT_RENDSA} =            id = br.com.dudstecnologia.cadastrodeclientes:id/editRenda
${EDIT_TELEFONE_REF1} =     id = br.com.dudstecnologia.cadastrodeclientes:id/editTelefoneRef1
${EDIT_TELEFONE_REF1} =     id = br.com.dudstecnologia.cadastrodeclientes:id/editTelefoneRef2
${EDIT_BANCO} =             id = br.com.dudstecnologia.cadastrodeclientes:id/editBanco
${EDIT_AGENCIA} =           id = br.com.dudstecnologia.cadastrodeclientes:id/editAgencia
${EDIT_CONTA} =             id = br.com.dudstecnologia.cadastrodeclientes:id/editConta	
${BTN_SALVAR} =             id = br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar
${BTN_EXCLUIR} =            id = br.com.dudstecnologia.cadastrodeclientes:id/btnExcluir
${ANDROID_MESSAGE}=         id = android:id/message
${ANDROID_BTN_OK}=          id = android:id/button1



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
    Click Element                       ${SPINNER_UF}
    Wait Until Page Contains Element    ${TEXTVIEW_UF}
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

Excluir Cliente
    Wait Until Page Contains Element        ${BTN_EXCLUIR}
    Click Element                           ${BTN_EXCLUIR}

Confirmar Exclusão de Cadastro
    Wait Until Page Contains Element        ${ANDROID_MESSAGE}
    Element Should Contain Text             ${ANDROID_MESSAGE}  Tem certeza que deseja excluir este cadastro?
    Click Element                           ${ANDROID_BTN_OK}

    

