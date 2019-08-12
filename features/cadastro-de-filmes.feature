#language: pt

@login
Funcionalidade: Cadastro de filmes
    Para que eu possa disponibilizar novos titulos no catalogo
    Sendo um gestor de catalogo
    Posso cadastrar um novo filme

    @new_movie
    Esquema do Cenario: Novo filme
        O gestor de catálogo cadastra um novo filme através do formulário
        e um novo registro é inserido no catálogo Ninjaflix

        Dado que <codigo> é um novo filme
        Quando eu faco o cadastro deste filme
        Então devo ver o novo filme na lista

        Exemplos:
            | codigo     |
            | "ultimato" |
            | "spider"   |
            | "jocker"   |

        
