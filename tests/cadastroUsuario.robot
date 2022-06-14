*** Settings ***
Resource        ../resources/base.robot
Resource        ../pages/home.robot
Resource        ../pages/formulario.robot
Resource        ../pages/cadatroUsusario.robot

Test Setup      Start App
Test Teardown   Close App

*** Test Case ***
Validar Cadastro Básico Cliente
    Validar Tela inicial
    Acessar Tela de Cadastro
    Inserir Dados Básicos
    Saval Formulário
    Validar Mensagem Sucesso  Cadastro efetuado com sucesso

Validar Consulta a Cadastro do Cliente
    Validar Cadastro Básico Cliente
    Selecionar Cliente
    Validar Nome Cliente

Validar Atualização de Dados do Cliente
    Validar Cadastro Básico Cliente
    Selecionar Cliente
    Atulizar Dados Cliente  João da Silva  joaoDAsilva@email.com
    Saval Formulário
    Validar Mensagem Sucesso  Cadastro atualizado com sucesso
