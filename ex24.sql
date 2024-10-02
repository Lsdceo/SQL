SELECT classificacao, COUNT(*) AS Quantidade_Filmes
FROM filme
WHERE classificacao = 'G'
GROUP BY classificacao;