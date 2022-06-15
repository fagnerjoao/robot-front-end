*** Settings ***
Documentation       Tela inicial do app

*** Variable ***
${HOME_TXT} =       id = br.com.dudstecnologia.cadastrodeclientes:id/txtNenhumCliente
${BTN_MENU} =       xpath = /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageButton
${BTN_CAD_NOVO} =   id = br.com.dudstecnologia.cadastrodeclientes:id/floating_novo
${BTN_EXPORTAR} =   xpath = //*[@text='Exportar Dados']
${BTN_SOBRE} =      id = br.com.dudstecnologia.cadastrodeclientes:id/floating_sobre	
${NOME_PESQUISA}=   id = br.com.dudstecnologia.cadastrodeclientes:id/editPesquisar
${NOME_LISTA}=      id = br.com.dudstecnologia.cadastrodeclientes:id/nomeLista


*** Keywords ***
Validar Tela inicial
    Wait Until Page Contains Element    ${HOME_TXT}

Acessar Tela de Cadastro
    Click Element                       ${BTN_MENU}
    Wait Until Page Contains Element    ${BTN_CAD_NOVO}
    Click Element                       ${BTN_CAD_NOVO}

Acessar Tela de Exportar Dados
    Wait Until Page Contains Element    ${BTN_MENU}
    Click Element                       ${BTN_MENU}
    Wait Until Page Contains Element    ${BTN_EXPORTAR}
    Click Element                       ${BTN_EXPORTAR}

Acessar Tela Sobre o App
    Click Element                       ${BTN_MENU}
    Wait Until Page Contains Element    ${BTN_EXPORTARBTN_SOBRE}
    Click Element                       ${BTN_EXPORTARBTN_SOBRE}

Selecionar Cliente
    [Arguments]                         ${nome}
    Wait Until Page Contains Element    ${NOME_LISTA}
    Click Text                          ${nome}

Validar Lista Vazia
    Wait Until Page Contains Element    ${NOME_PESQUISA}
    Page Should Not Contain Element     ${NOME_LISTA}

Validar Exclusão de Cadastro
    [Arguments]                         ${nome}
    Wait Until Page Contains Element    ${NOME_PESQUISA}
    Page Should Not Contain Text        ${nome}