SELECT c.cliente_id,
       SUM(p.valor) AS total_pago
FROM cliente c, aluguel a, pagamento p, inventario i, filme f
WHERE a.cliente_id = c.cliente_id
  AND a.aluguel_id = p.aluguel_id
  AND a.inventario_id = i.inventario_id
  AND i.filme_id = f.filme_id
  AND MONTH(a.data_de_aluguel) = 6
  AND YEAR(a.data_de_aluguel) = 2006
GROUP BY c.cliente_id;
