            #language: pt

            Funcionalidade: Configurando produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Escolhendo quantidade
            Para depois inserir no carrinho



            Esquema do Cenário: Inserido no carrinho
            Dado que o usuário acesse a página de um produto
            E selecione o tamanho <tamanho1>
            E selecione a cor <cor1>
            E a quantia <quantia1>
            Quando e clicar em "Adicionar ao carrinho"
            Então deve surgir a seguinte mensagem "Produto Inserido ao Carrinho"
            Mas se a <quantia> for maior que "10"
            E o tamanho <tamanho1> estiver em branco
            E a cor <cor1> estiver em branco
            Quando clicar em "Adicionar ao carrinho"
            Então deve surgir a seguinte mensagem "Verifique se selecionou a variação corretamente"

            Esquema do Cenário: Limpeza de seleções de variação
            Dado que o usuario acesse a página de um produto
            E selecione o tamanho <tamanho1> e a cor <cor1>
            Quando clicar no botão "Limpar"
            Então a seleção de tamanho e cor deve voltar ao estado original
            E os campos de seleção e cor devem estar limpos
            E uma mensagem deve surgir "Variação de cor e tamanho limpa com sucesso"

            Exemplos:
            | tamanho1 | cor1   | quantia |
            | XS       | Blue   | 1       |
            | S        | Orange | 2       |
            | M        | Red    | 3       |
            | L        | ""     | 4       |
            | ""       | ""     | 5       |
            | ""       | ""     | 6       |
            | ""       | ""     | 7       |
            | ""       | ""     | 8       |
            | ""       | ""     | 9       |
            | ""       | ""     | 10      |