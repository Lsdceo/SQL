SELECT c.nome AS categoria, f.classificacao, COUNT(f.filme_id) AS quantidade_filmes
FROM filme f
JOIN filme_categoria fc ON f.filme_id = fc.filme_id
JOIN categoria c ON fc.categoria_id = c.categoria_id
GROUP BY c.nome, f.classificacao
ORDER BY c.nome, f.classificacao;
