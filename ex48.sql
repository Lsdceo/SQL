SELECT a.funcionario_id, fc.categoria_id, COUNT(*) AS quantidade_alugueis
FROM aluguel a, inventario i, filme_categoria fc
WHERE a.inventario_id = i.inventario_id
  AND i.filme_id = fc.filme_id
GROUP BY a.funcionario_id, fc.categoria_id;
