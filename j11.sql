SELECT c.nome AS categoria, COUNT(f.filme_id) AS quantidade_filmes
FROM filme f
JOIN filme_categoria fc ON f.filme_id = fc.filme_id
JOIN categoria c ON fc.categoria_id = c.categoria_id
WHERE f.classificacao IN ('G', 'PG')
GROUP BY c.nome;
