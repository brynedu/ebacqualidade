            #language: pt

            Funcionalidade: Configurando produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Escolhendo quantidade
            Para depois inserir no carrinho



            Esquema do Cenário: Inserido no carrinho
            Dado que o usuário acesse a página de um produto
            Quando escolher <tamanho>, <cor> e <quantia>
            Então deve clicar no botão "Comprar", assim inserindo produto no carrinho
            Exemplos:
            | tamanho | cor    | quantia |
            | XS      | Blue   | 1       |
            | S       | Orange | 2       |
            | M       | Red    | 3       |
            | L       |        | 4       |

            Cenário: Limite máximo de produtos atingidos
            Dado que o usuário acesse a página de um produto
            Quando adicionar mais de "10" produtos ao "Carrinho"
            Então ao clicar em "Comprar", deve surgir uma mensagem de alerta, limite máximo de produtos atingidos

            Cenário: Seleção em branco
            Dado que o usuário acesse a página de um produto
            Quando clicar em "Comprar", sem selecionar "Tamanho" e "Cor"
            Então deve surgir a seguinte mensagem "Seleciona algumas das opções, antes de adiciona-lo ao carrinho"

            Cenário: Limpeza de seleções de variação
            Dado que o usuario acesse a página de um produto
            Quando clicar no botão "Limpar"
            Então a seleção de tamanho e cor deve voltar ao estado original
