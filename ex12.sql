SELECT classificacao, COUNT(*) AS quantidade_filmes 
FROM filme 
GROUP BY classificacao;
