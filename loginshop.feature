            #language: pt

            Funcionalidade: Login na loja
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o usuário esteja na página de login

            Cenário: Logado com sucesso
            Quando inserir seu nome de usuário "joaoebac" ou seu email "joao@ebac.com.br"
            E inserir sua senha "ebac@123"
            E clicar no botão "Login"
            Então deve aparecer uma mensagem de "Usuário logado com sucesso"
            E deve ser redirecionado para a página "Checkout"
            E deve aparecer sua lista de pedidos

            Cenário: Falha na autenticação
            Quando inserir seu nome de usuário "joaoebac" ou seu email "joao@ebac.com.br"
            E inserir sua senha incorreta "1234"
            E clicar no "Login"
            Então deve aparecer a seguinte mensagem de erro "Usuário ou senha incorretos"
            E quando inserir seu nome de usuário incorreto "joaoninguem" ou email "joaong@ebac.com.br"
            E sua senha correta "ebac@123"
            Então deve aparecer a seguinte mensagem de erro "Usuário ou senha incorretos"
            
            Cenário: Faltam dados
            Quando o campo usúario ou email não for preenchido
            E for inserido sua senha "ebac@123"
            E clicado no botão "Login"
            Então deve aparecer a seguinte mensagem de erro "Por favor insira um usuário válido"

            E quando inserir o seu nome de usuário "joaoebac" ou seu email "joao@ebac.com.br"
            E a a sua senha não for preenchida
            Então deve aparecer a seguinte mensagem de erro "Por favor insira sua senha"

            Exemplos:
            | Usuário  | Email            | Senha    | Válido   |
            | joaoebac | joao@ebac.com.br | @ebac123 | Válido   |
            | ""       | joao@ebac.com.br | @ebac123 | Inválido |
            | joaoebac | ""               | @ebac123 | Inválido |
            | joaoebac | joao@ebac.com.br | ""       | Inválido |
            | ""       | ""               | ""       | Inválido |
