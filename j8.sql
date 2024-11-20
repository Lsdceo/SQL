SELECT c.nome AS categoria, MAX(f.duracao_do_filme) AS maior_duracao
FROM filme f
JOIN filme_categoria fc ON f.filme_id = fc.filme_id
JOIN categoria c ON fc.categoria_id = c.categoria_id
GROUP BY c.nome;
