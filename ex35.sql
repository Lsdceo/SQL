SELECT p.pais_id, p.pais, COUNT(cidade) as quantidade_de_cidades
FROM pais p , cidade c
where c.cidade like 'a%' or c.cidade like '%r%' and p.pais_id = c.pais_id
GROUP BY pais
having count(c.cidade) > 3