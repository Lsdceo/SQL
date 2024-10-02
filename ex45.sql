SELECT DISTINCT f.titulo
FROM filme f, inventario i, aluguel a, cliente c, endereco e, cidade ci, pais p
WHERE f.filme_id = i.filme_id
  AND i.inventario_id = a.inventario_id
  AND a.cliente_id = c.cliente_id
  AND c.endereco_id = e.endereco_id
  AND e.cidade_id = ci.cidade_id
  AND ci.pais_id = p.pais_id
  AND p.pais = 'Argentina';
