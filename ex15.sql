SELECT preco_da_locacao 
FROM filme 
GROUP BY preco_da_locacao 
HAVING COUNT(*) > 340;

