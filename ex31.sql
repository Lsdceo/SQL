select max(duracao_da_locacao) from filme;

select count(*) from filme where duracao_da_locacao = (select max(duracao_da_locacao) from filme)

