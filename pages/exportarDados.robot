*** Settings ***
Documentation       Tela de exportação de dados
Library             DateTime

*** Variable ***	
${BTN_EXPORTAR} =           id = br.com.dudstecnologia.cadastrodeclientes:id/btnExportar
${BTN_BACKUP} =             id = br.com.dudstecnologia.cadastrodeclientes:id/btnBackup
${BTN_RESTAURAR} =          id = br.com.dudstecnologia.cadastrodeclientes:id/btnRestaurar
${ANDROID_MESSAGE}=         id = android:id/message
${ANDROID_BTN_OK}=          id = android:id/button1
${ANDROID_ICON_FILES}=      id = Files
${ANDROID_SHOWTOOLS}=       id = Show roots

*** Variable ***	
${BTN_EXPORTAR} =            id = br.com.dudstecnologia.cadastrodeclientes:id/btnExportar
${BTN_BACKUP} =              id = br.com.dudstecnologia.cadastrodeclientes:id/btnBackup
${BTN_RESTAURAR} =           id = br.com.dudstecnologia.cadastrodeclientes:id/btnRestaurar



*** Keywords ***
Exportar Dados
    ${TODAY}                            Get Current Date                                 result_format=%d_%m_%Y
    Acessar Tela de Exportar Dados
    Wait Until Page Contains Element    ${BTN_EXPORTAR}
    Click Text                          EXPORTAR EXCEL
    Wait Until Page Contains Element    ${ANDROID_MESSAGE}
    Element Should Contain Text         ${ANDROID_MESSAGE}  O arquivo foi salvo na sua pasta padrão de documentos com o nome 'CAD_${TODAY}.xls'.
    Click Element                       ${ANDROID_BTN_OK}