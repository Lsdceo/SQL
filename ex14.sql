SELECT preco_da_locacao, COUNT(*) AS quantidade_filmes 
FROM filme 
GROUP BY preco_da_locacao;
