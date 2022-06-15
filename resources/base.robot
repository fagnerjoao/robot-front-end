*** Settings ***
Library     Zoomba.MobileLibrary
Library     DateTime
Resource    helpers.robot
Resource    devices.robot

*** Keywords ***
Start App
    Set Appium Timeout  30
    Android Local

Close App
    Capture Page Screenshot
    Close Application