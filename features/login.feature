#language:pt

@temp
Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @login_happy
    Cenario: Acesso

        Quando faço login com "lpwda@gmail.com" e "123456"
        Então devo ser autenticado
        E devo ver "Lucas Wagenska" na área logada

    @login_unhappy
    Esquema do Cenario: Login sem sucesso

        Quando faço login com <email> e <senha>
        Então não devo ser autenticado
        E devo visualizar a mensagem de alerta <alerta>

        Exemplos:
        | email             | senha     | alerta                         |
        | "lpwda@gmail.com" | "1234456" | "Usuário e/ou senha inválidos" |
        | "lpwda@live.com"  | "123456"  | "Usuário e/ou senha inválidos" |
        | ""                | "123456"  | "Opps. Cadê o email?"          |
        | "lpwda@gmail.com" | ""        | "Opps. Cadê a senha?"          |