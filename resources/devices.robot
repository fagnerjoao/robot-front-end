*** Keywords ***
Android Local
    Open Application    http://127.0.0.1:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 udid=emulator-5554
    ...                 app=${EXECDIR}/app/cadastro_clientes_teste.apk
    ...                 autoGrantPermissions=true
    ...                 fullReset=false
    ...                 noReset=false