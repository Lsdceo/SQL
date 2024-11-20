SELECT p.pais, COUNT(ci.cidade_id) AS quantidade_cidades
FROM pais p
JOIN cidade ci ON p.pais_id = ci.pais_id
WHERE ci.cidade LIKE 'A%'
GROUP BY p.pais
ORDER BY quantidade_cidades ASC;
