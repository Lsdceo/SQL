SELECT f.titulo
FROM filme f
WHERE f.preco_da_locacao > (SELECT AVG(preco_da_locacao) FROM filme);
