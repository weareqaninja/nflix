#language:pt

@login
Funcionalidade: Remover filme
    Para que eu possa manter o catálogo atualizado
    Sendo um gestor de catálogo que encontrou um título cancelado/indesejado ou que não tem uma boa aceitação pelo público
    Posso remover este item

    Cenario: Confirmar exclusão

        Dado que "dbz" está no catálogo
        Quando eu solicito a exclusão
        E confirmo a socilitação
        Então este item deve ser removido do catálogo

    @rm_movie
    Cenario: Cancelar exclução

        Dado que "10_coisas" está no catálogo
        Quando eu solicito a exclusão
        Mas cancelo a solicitação
        Então este item deve permanecer no catálogo