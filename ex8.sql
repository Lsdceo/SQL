SELECT COUNT(*) AS quantidade_filmes 
FROM filme 
WHERE classificacao = 'PG-13' 
  AND preco_da_locacao > 2.40;
