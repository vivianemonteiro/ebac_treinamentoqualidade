            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja na página do item a ser adquirido

            Cenário: Seleções obrigatórias
            Quando não seleciono a cor
            E não seleciono o tamanho
            E não seleciono a quantidade
            Então um alerta deve ser apresentado informando que os itens são obrigatórios
            
            
            Cenário: Limite de produtos por venda
            Quando adiciono "11" itens ao carrinho
            Então não devo conseguir prosseguir com a compra

            Cenário: Limpar opções
            Dado que eu tenha selecionado o <tamanho>
            E a <cor>
            E a <quantidade>
            Quando eu clico em Limpar
            Então as escolhas devem voltar ao estado original

            Exemplos:
            | tamanho | cor     | quantidade |
            | M       | Organge | 2          |
            | XS      | Blue    | 5          |
            | XL      | Red     | 1          |

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu esteja na tela de Login

            Cenário: Dados Válidos
            Quando eu inserir o usuário "joao@ebac.com.br"
            E a senha "teste@123"
            Então devo ser direcionado para tela de checkout

            Cenário: Usuário inválido
            Quando eu inserir o usuário <usuario>
            E a senha <senha>
            Então a mensagem "Usuário ou senha inválidos" deve ser exibida

            Exemplos:
            | usuario          | senha                       |
            | abc@efg.hi       | 123abc                      |
            | joao@ebac.com.br | qualquersenhaquenaofuncione |
            | abc$def.com      | 123abc                      |

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
            |campo|valor|mensagem|
            |nome| ${EMPTY}| mensagem de alerta| 
            |sobrenome|${EMPTY}|mensagem de alerta|
            |país|${EMPTY}|mensagem de alerta|
            |endereço|${EMPTY}|mensagem de alerta|
            |cidade|${EMPTY}|mensagem de alerta|
            |cep|${EMPTY}|mensagem de alerta|
            |telefone|${EMPTY}|mensagem de alerta|
            |endereço de e-mail|${EMPTY}|mensagem de alerta|
            |endereço de e-mail|joao@ebac,com;br|mensagem de erro|




