SELECT ano_de_lancamento, COUNT(filme_id) AS quantidade_filmes
FROM filme
GROUP BY ano_de_lancamento
