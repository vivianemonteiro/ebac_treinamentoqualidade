            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou na tela de Checkout

            Cenário: Preenchimento dos campos obrigatórios
            Quando preencho o formulário com todos os campos obrigatórios
            Então devo posso prosseguir com a finalização da compra

            Cenário: Campos obrigatórios em branco
            Quando preencho o <campo> com o <valor>
            E tento prosseguir com a finalização da compra
            Então uma <mensagem> deve ser apresentada

            Exemplos:
            | campo              | valor            | mensagem           |
            | nome               | ${EMPTY}         | mensagem de alerta |
            | sobrenome          | ${EMPTY}         | mensagem de alerta |
            | país               | ${EMPTY}         | mensagem de alerta |
            | endereço           | ${EMPTY}         | mensagem de alerta |
            | cidade             | ${EMPTY}         | mensagem de alerta |
            | cep                | ${EMPTY}         | mensagem de alerta |
            | telefone           | ${EMPTY}         | mensagem de alerta |
            | endereço de e-mail | ${EMPTY}         | mensagem de alerta |
            | endereço de e-mail | joao@ebac,com;br | mensagem de erro   |




