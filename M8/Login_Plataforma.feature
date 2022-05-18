            #language: pt

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

          
