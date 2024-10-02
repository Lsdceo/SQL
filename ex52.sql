SELECT f.classificacao,
       SUM(p.valor) AS total_pago
FROM filme f, aluguel a, pagamento p, inventario i
WHERE a.inventario_id = i.inventario_id
  AND i.filme_id = f.filme_id
  AND a.aluguel_id = p.aluguel_id
  AND YEAR(a.data_de_aluguel) = 2006
GROUP BY f.classificacao;
