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
    Validar Mensagem Sucesso  Cadastro efetuado com sucesso

Validar Consulta a Cadastro do Cliente
    Acessar Tela de Cadastro
    Inserir Dados Básicos
    Saval Formulário
    Validar Mensagem Sucesso  Cadastro efetuado com sucesso
    Selecionar Cliente
    Validar Nome Cliente    João Silva

Validar Atualização de Dados do Cliente
    Acessar Tela de Cadastro
    Inserir Dados Básicos
    Saval Formulário
    Validar Mensagem Sucesso  Cadastro efetuado com sucesso
    Selecionar Cliente
    Atulizar Dados Cliente  João da Silva  joaoDAsilva@email.com
    Saval Formulário
    Validar Mensagem Sucesso  Cadastro atualizado com sucesso
    Selecionar Cliente
    Validar Nome Cliente    João da Silva