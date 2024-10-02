SELECT count(cliente_id), pais
FROM cliente c,endereco e,cidade ci, pais p
WHERE c.endereco_id = e.endereco_id and 
e.cidade_id = ci.cidade_id
AND ci.pais_id = p.pais_id 
group by pais 
having count(pais) > 10