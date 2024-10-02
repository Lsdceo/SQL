SELECT YEAR(a.data_de_aluguel) AS ano,
       MONTH(a.data_de_aluguel) AS mes,
       COUNT(*) AS quantidade_filmes_locados
FROM aluguel a
GROUP BY ano, mes
ORDER BY ano, mes;
