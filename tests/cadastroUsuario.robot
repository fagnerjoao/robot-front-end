*** Settings ***
Resource        ../resources/base.robot
Resource        ../pages/home.robot

Test Setup      Start App
Test Teardown   Close App

*** Test Case ***
Validar Tela inicial
    Validar Tela inicial