#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catalogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @login_happy
    Cenario: Acesso
        Quando eu faco login com "tony@stark.com" e "pwd123"
        Entao devo ser autenticado
        E devo ver "Tony Stark" na area logada

    @login_hapless
    Esquema do Cenario: Login sem sucesso
        Quando eu faco login com <email> e <senha>
        Entao nao devo ser autenticado
        E devo ver a mensagem de alerta <alerta>

        Exemplos:
            | email            | senha     | alerta                         |
            | "tony@stark.com" | "abc123"  | "Usuário e/ou senha inválidos" |
            | "404@yahoo.com"  | "abc123"  | "Usuário e/ou senha inválidos" |
            | ""               | "abcxpto" | "Opps. Cadê o email?"          |
            | "123@stark.com"  | ""        | "Opps. Cadê a senha?"          |




