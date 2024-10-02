SELECT MONTH(a.data_de_aluguel) AS mes,
       AVG(p.valor) AS media_valor_pago
FROM filme f, inventario i, aluguel a, pagamento p
WHERE f.filme_id = i.filme_id
  AND i.inventario_id = a.inventario_id
  AND a.aluguel_id = p.aluguel_id
  AND YEAR(a.data_de_aluguel) = 2005
GROUP BY MONTH(a.data_de_aluguel);
