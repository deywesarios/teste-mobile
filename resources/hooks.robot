*** Settings ***
Documentation       Todas as configurações de SETUP e TEARDOWN do projeto estarão aqui.

Resource        package.robot

*** Variables ***
${CELULAR}      http://localhost:4723/wd/hub

*** Keywords ***
#SETUP E TEARDOWN
Abrir aplicativo
    Set Appium Timeout              60
    Open Application                ${CELULAR}
    ...                             platformName=Android
    ...                             deviceName=R9QR1042KJW
    ...                             automationName=uiautomator2
    ...                             appPackage=com.google.android.youtube
    ...                             appActivity=com.google.android.youtube.HomeActivity
    ...                             autoGrantPermissions=true

Fechar aplicativo
    Capture Page Screenshot
    Close Application
