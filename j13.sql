SELECT a.primeiro_nome, a.ultimo_nome, COUNT(fa.filme_id) AS quantidade_filmes
FROM ator a
JOIN filme_ator fa ON a.ator_id = fa.ator_id
GROUP BY a.ator_id
ORDER BY quantidade_filmes DESC;
