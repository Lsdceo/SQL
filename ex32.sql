SELECT cidade, pais
FROM cidade c, pais p
WHERE p.pais LIKE 'A%' and c.pais_id=p.pais_id;

