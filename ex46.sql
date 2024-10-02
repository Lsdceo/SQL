SELECT COUNT(*) AS quantidade_alugueis
FROM cliente c, endereco e, cidade ci, pais p, aluguel a, inventario i, filme f
WHERE c.endereco_id = e.endereco_id
  AND e.cidade_id = ci.cidade_id
  AND ci.pais_id = p.pais_id
  AND p.pais = 'Chile'
  AND c.cliente_id = a.cliente_id
  AND a.inventario_id = i.inventario_id
  AND i.filme_id = f.filme_id;
