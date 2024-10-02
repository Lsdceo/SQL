select max(duracao_da_locacao), categoria_id from filme_categoria, filme
group by categoria_id;