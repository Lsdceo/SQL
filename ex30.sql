SELECT ano_de_lancamento, COUNT(*) AS quantidade_filmes
FROM filme
GROUP BY ano_de_lancamento
HAVING COUNT(*) > 400
ORDER BY quantidade_filmes DESC;