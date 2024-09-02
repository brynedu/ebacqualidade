            #language: pt

            Funcionalidade: Efetuar cadastro na plataforma para finalizar compra
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o usuário esteja na página checkout

            Cenário: Checkout e finalizar compra
            Quando preencher todos seus dados obrigatórios, descatados com *
            Então ao clicar em "Finalizar Compra", deve ser redirecionado para a página de pagamento

            Esquema do Cenário: Finalizar compra com e-mail invalido
            Quando preencher todos seus dados, mas com um <email> inválido
            Então ao clicar em "Finalizar Compra" deve surgir a seguinte mensagem "Por favor, insira um e-mail válido"
            Exemplos:
            | email            | Válido |
            | joao@ebac.com.br | SIM    |
            | joao@com.br      | NÃO    |

            Cenário: Finalizar compra com campos em branco
            Quando deixar campos obrigatórios destacados em *, em branco
            Então ao clicar em "Finalizar Compra" deve surgir a seguinte mensagem "Por favor, preencha os campos obrigatórios"
