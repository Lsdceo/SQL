WITH MaiorDuracao AS (
  SELECT MAX(duracao_da_locacao) AS maior_duracao
  FROM filme
)
SELECT COUNT(*) AS quantidade_filmes
FROM filme f
INNER JOIN idioma i ON f.idioma_id = i.idioma_id
WHERE (i.nome = 'JAPANESE' OR i.nome = 'GERMAN')
  AND f.duracao_da_locacao = (SELECT maior_duracao FROM MaiorDuracao);