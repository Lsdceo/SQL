SELECT f.classificacao, fc.categoria_id, COUNT(*) AS Quantidade_Filmes
FROM filme f, filme_categoria fc
WHERE f.filme_id = fc.filme_id
GROUP BY f.classificacao, fc.categoria_id;