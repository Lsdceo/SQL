SELECT a.funcionario_id, COUNT(*) AS quantidade_alugueis
FROM aluguel a
GROUP BY a.funcionario_id;
