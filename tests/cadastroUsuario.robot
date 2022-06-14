*** Settings ***
Resource        ../resources/base.robot
Resource        ../pages/home.robot
Resource        ../pages/formulario.robot

Test Setup      Start App
Test Teardown   Close App

*** Test Case ***
Validar Cadastro Básico Cliente
    Validar Tela inicial
    Acessar Tela de Cadastro
    Inserir Dados Básicos
    Saval Formulário
    Validar Mensagem Sucesso