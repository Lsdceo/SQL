SELECT ci.cidade, p.pais
FROM cidade ci
JOIN pais p ON ci.pais_id = p.pais_id
WHERE p.pais LIKE 'A%';
