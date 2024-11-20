SELECT f.filme_id, f.titulo, COUNT(fa.ator_id) AS quantidade_de_atores
FROM filme f
INNER JOIN filme_ator fa ON f.filme_id = fa.filme_id
GROUP BY f.filme_id
HAVING COUNT(fa.ator_id) > 5
ORDER BY quantidade_de_atores DESC;

