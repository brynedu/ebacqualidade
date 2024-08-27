            #language: pt

            Funcionalidade: Efetuar cadastro na plataforma para finalizar compra
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o usuário esteja na página checkout

            Cenário: Checkout e finalizar compra
            Quando preencher todos seus dados obrigatórios, descatados com *
            Exemplos:
            | Nome | Sobrenome | País   | Endereço    | Cidade       | CEP       | Telefone    | E-mail           | Válido |
            | Joao | EBAC      | Brasil | Rua 12, Nº4 | Porto Alegre | 98000-000 | 53912345678 | joao@ebac.com.br | Sim    |
            E clicar no botão "Finalizar compra"
            Então deve aparecer a seguinte mensagem "Cadastro realizado com sucesso"
            E deve ser redirecionado para a página de "Conclusão de págamento"

            Cenário: Finalizar ccompra com e-mail invalido
            Quando preencher todos seus dados obrigatórios, destacados com *, mas com seu e-mail inválido
            Exemplos:
            | Nome | Sobrenome | País   | Endereço    | Cidade       | CEP       | Telefone    | E-mail          | Válido |
            | Joao | EBAC      | Brasil | Rua 12, Nº4 | Porto Alegre | 98000-000 | 53912345678 | joao@ninguem.br | Não    |
            E clicar no botão "Finalizar compra"
            Então deve aparecer a a seguinte mensagem de erro "Por favor, insira um e-mail válido"

            Cenário: Finalizar compra com campos em branco
            Quando deixar um, ou mais campos obrigatórios, destacados com * em branco
            Exemplos:
            | Nome | Sobrenome | País   | Endereço | Cidade       | CEP       | Telefone    | Email | Válido |
            | Joao | ""        | Brasil | ""       | Porto Alegre | 98000-000 | 53912345678 | ""    | Não    |
            E clicar no botão "Finalizar compra"
            Então deve aparecer a seguinte mensagem alerta "Por favor, preencha os campos obrigatórios"
            