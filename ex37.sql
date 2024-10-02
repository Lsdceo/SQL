SELECT c.cliente_id, c.primeiro_nome, c.ultimo_nome
FROM cliente c,endereco e,cidade ci, pais p
WHERE c.endereco_id = e.endereco_id and 
e.cidade_id = ci.cidade_id
AND ci.pais_id = p.pais_id AND p.pais = 'United States'