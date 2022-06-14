*** Settings ***
Documentation                    Aqui teremos as keywords helpers.

***Variables***
${ANDROID_POPUP}=                       id = com.android.permissioncontroller:id/content_container
${ANDROID_POPUP_ALLOW_BUTTON}=          id = com.android.permissioncontroller:id/permission_allow_button
${ANDROID_POPUP_DENY_BUTTON}=           id = com.android.permissioncontroller:id/permission_deny_button

*** Keywords ***
Fechar Popup Android
    Wait Until Page Contains Element        ${ANDROID_POPUP}
    Click Element                           ${ANDROID_POPUP_ALLOW_BUTTON}