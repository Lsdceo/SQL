SELECT f.titulo, COUNT(fa.ator_id) AS quantidade_de_atores
FROM filme f
INNER JOIN filme_ator fa ON f.filme_id = fa.filme_id
WHERE f.idioma_id = (SELECT idioma_id FROM idioma WHERE nome = 'JAPANESE')
GROUP BY f.filme_id
HAVING COUNT(fa.ator_id) > 10
ORDER BY f.titulo ASC, quantidade_de_atores ASC;