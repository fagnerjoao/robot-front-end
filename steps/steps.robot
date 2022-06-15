*** Settings ***
Resource        ../resources/base.robot
Resource        ../pages/home.robot
Resource        ../pages/formulario.robot
Resource        ../pages/exportarDados.robot

*** Keywords ***
Dado que estou na tela de cadastro basico de cliente
    Validar Tela inicial
    Acessar Tela de Cadastro

Quando eu preencher todos os dados    
    Inserir Dados Básicos
    
E clicar no botão salvar
    Saval Formulário

Então a mensagem "${mensagem}" deve ser exibida
    Validar Mensagem Sucesso  ${mensagem}

Dado que estou na tela inicial do app
    Acessar Tela de Cadastro
    Inserir Dados Básicos
    Saval Formulário
    Validar Mensagem Sucesso  Cadastro efetuado com sucesso

Quando eu selecionar o cliente "${nome}"   
    Selecionar Cliente  ${nome}

Então a tela com os dados do cliente "${nome}" deve ser exibida
    Validar Nome Cliente    ${nome}

Dado que estou na tela de dados do cliente "${nome}"
    Acessar Tela de Cadastro
    Inserir Dados Básicos
    Saval Formulário
    Validar Mensagem Sucesso  Cadastro efetuado com sucesso
    Selecionar Cliente  ${nome}

Quando eu atualizar os dados nome e email
    Atulizar Dados Cliente  João da Silva  joaoDAsilva@email.com

E validar a mensagem "${mensagem}"
    Validar Mensagem Sucesso  ${mensagem}

Então valido o cadastro atualizado do cliente "${nome}"   
    Selecionar Cliente      ${nome}
    Validar Nome Cliente    ${nome}

Dado que estou na tela de exportação de dados
    Acessar Tela de Cadastro
    Inserir Dados Básicos
    Saval Formulário
    Validar Mensagem Sucesso  Cadastro efetuado com sucesso
    Acessar Tela de Exportar Dados

Quando eu clicar em EXPORTAR EXCEL
    Exportar Dados

Então a mensagem "O arquivo foi salvo na sua pasta padrão de documentos com 'CAD_d_mm_yyyy.xls'" deve ser exibida
    Validar Mensagem de Dados Exportados

Quando clicar no botão excluir
    Excluir Cliente

E confirmar a exclusão de cadastro
    Confirmar Exclusão de Cadastro

Então o cadastro "${nome}" não deve aparecer na lista de clientes
    Validar Exclusão de Cadastro  ${nome}