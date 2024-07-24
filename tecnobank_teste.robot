*** Settings ***
Documentation    Essa suite testa remover item de carrinho
Resource         tecnobank_resources.robot
Test Setup       Abrir Navegador
# Test Teardown    Fechar Navegador

    
*** Test Cases ***
caso de teste 01 - Remover Item do Carrinho
    [Documentation]    Esse teste verifica se a função remover do carrinho é funcional
    [Tags]        menus  remover item
    Dado que o usuário crie uma nova conta
    E que o usuário faça o login com sucesso
    Quando Usuário compre três itens
    E Usuário remove um item dentro do Carrinho
    E atualize a página
    Então sistema deve remover item do carrinho