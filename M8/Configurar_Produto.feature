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
            Dado que eu tenha selecionado o <tamanho>, a <cor> e a <quantidade>
            Quando eu clico em Limpar
            Então as escolhas devem voltar ao estado original

            Exemplos:
            | tamanho | cor     | quantidade |
            | M       | Organge | 2          |
            | XS      | Blue    | 5          |
            | XL      | Red     | 1          |

           