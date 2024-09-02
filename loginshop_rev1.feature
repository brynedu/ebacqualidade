            #language: pt

            Funcionalidade: Login na loja
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o usuário esteja na página de login

            Esquema do Cenário: Logado com sucesso
            Quando inserir seu nome de <usuario>, <email> e <senha> válidos
            Então ao clicar em "Login" deve ser redirecionado ao "Checkout"
            Exemplos:
            | usuario  | email            | senha    | Válido |
            | joaoebac | joao@ebac.com.br | @ebac123 | SIM    |

            Esquema do Cenário: Falha na autenticação
            Quando inserir seu nome de <usuario2>, <email2> ou <senha2> inválidos
            Então ao clicar em "Login" deve surgir um alerta "Usuário ou senha incorretos"
            Exemplos:
            | usuario2 | email2           | senha2   | Válido |
            | joaoebac | joao@ebac.com.br | @ebac123 | SIM    |
            | joao     | joao@com.br      | 123      | NÃO    |

            Cenário: Faltam dados
            Quando algum dos campos usúario e e-mail, ou senha não for preenchido
            Então ao clicar em "Login" deve surgir um alerta "Por favor, revise seus dados"

