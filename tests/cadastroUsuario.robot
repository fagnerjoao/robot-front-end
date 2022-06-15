*** Settings ***
Resource        ../steps/steps.robot
Test Setup      Start App
Test Teardown   Close App

*** Test Case ***
Cenário 1: cadastro básico de cliente
    [Tags]  cenario_1
    Dado que estou na tela de cadastro basico de cliente
    Quando eu preencher todos os dados
    E clicar no botão salvar
    Então a mensagem "Cadastro efetuado com sucesso" deve ser exibida

Cenário 2: Consultar cadastro de cliente
    [Tags]  cenario_2
    Dado que estou na tela inicial do app
    Quando eu selecionar o cliente "João Silva"
    Então a tela com os dados do cliente "João Silva" deve ser exibida

Cenário 3: atualizar cadastro de cliente
    [Tags]  cenario_3
    Dado que estou na tela de dados do cliente "João Silva"
    Quando eu atualizar os dados nome e email
    E clicar no botão salvar
    E validar a mensagem "Cadastro atualizado com sucesso"
    Então valido o cadastro atualizado do cliente "João da Silva"

Cenário 4: exportar dados de clientes
    [Tags]  cenario_4
    Dado que estou na tela de exportação de dados
    Quando eu clicar em EXPORTAR EXCEL
    Então a mensagem "O arquivo foi salvo na sua pasta padrão de documentos com 'CAD_d_mm_yyyy.xls'" deve ser exibida

Cenário 5: excluir cadastro de cliente
    [Tags]  cenario_5
	Dado que estou na tela de dados do cliente "João Silva"
	Quando clicar no botão excluir
	E confirmar a exclusão de cadastro
	Então o cadastro "João Silva" não deve aparecer na lista de clientes