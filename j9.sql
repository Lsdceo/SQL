SELECT c.nome AS categoria, COUNT(fc.filme_id) AS quantidade_filmes
FROM filme_categoria fc
JOIN categoria c ON fc.categoria_id = c.categoria_id
GROUP BY c.nome;
