SELECT p.pais, COUNT(ci.cidade_id) AS quantidade_cidades
FROM pais p
LEFT JOIN cidade ci ON p.pais_id = ci.pais_id
GROUP BY p.pais
ORDER BY quantidade_cidades DESC;
