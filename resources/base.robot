*** Settings ***
Library     Zoomba.MobileLibrary
#Library     custom_keywords.py
Library     DateTime
Resource    helpers.robot
Resource    devices.robot

*** Keywords ***
Start App
    ${TODAY}            Get Current Date    result_format=%d/%m/%Y %H:%M
    Set Appium Timeout  30
    Android Local

Close App
    Close Application