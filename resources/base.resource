*** Settings ***
Documentation     Tudo deve comecar nesse arquivo

Library          AppiumLibrary

Resource        screens/login.resource
Resource        screens/tasks.resource

*** Keywords ***
Start Session

        Open Application    http://localhost:4723
    ...                automationName=UiAutomator2
    ...                platformName=Android
    ...                deviceName=Emulator
    ...                udid=127.0.0.1:6555
    ...                autoGrantPermissions=true
    ...                app=apps/markx.apk

    Wait Until Page Contains  Endereço IP da Api    timeout=10s
    

Finish Session
        Capture Page Screenshot
        Close Application