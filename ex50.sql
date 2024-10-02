SELECT c.categoria_id, SUM(f.duracao_do_filme) AS soma_duracao
FROM filme f, filme_categoria fc, categoria c
WHERE f.filme_id = fc.filme_id
  AND fc.categoria_id = c.categoria_id
GROUP BY c.categoria_id;
