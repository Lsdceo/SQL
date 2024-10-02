SELECT classificacao, COUNT(*) AS Quantidade_Filmes
FROM filme
WHERE classificacao = 'G' or  classificacao = 'PG'
GROUP BY classificacao;