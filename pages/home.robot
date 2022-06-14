*** Settings ***
Documentation       Tela inicial do app

*** Variable ***
${HOME_TXT} =        id = br.com.dudstecnologia.cadastrodeclientes:id/txtNenhumCliente
${BTN_MENU} =        xpath = /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageButton
${BTN_CAD_NOVO} =    id = br.com.dudstecnologia.cadastrodeclientes:id/floating_novo
${BTN_EXPORTAR} =    id = br.com.dudstecnologia.cadastrodeclientes:id/floating_exportar
${BTN_SOBRE} =       id = br.com.dudstecnologia.cadastrodeclientes:id/floating_sobre


*** Keywords ***
Validar Tela inicial
    Wait Until Page Contains Element    ${HOME_TXT}

Acessar Tela de Cadastro
    Clcick Element  ${BTN_MENU}
    Clcick Element  ${BTN_CAD_NOVO}

Acessar Tela de Exportar Dados
    Clcick Element  ${BTN_MENU}
    Clcick Element  ${BTN_EXPORTAR}

Acessar Tela Sobre o App
    Clcick Element  ${BTN_MENU}
    Clcick Element  ${BTN_EXPORTARBTN_SOBRE}