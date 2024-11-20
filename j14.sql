SELECT ano_de_lancamento, COUNT(filme_id) AS quantidade_filmes
FROM filme
WHERE preco_da_locacao > (
    SELECT AVG(f.preco_da_locacao)
    FROM filme f
    JOIN filme_categoria fc ON f.filme_id = fc.filme_id
    JOIN categoria c ON fc.categoria_id = c.categoria_id
    WHERE c.nome = 'Children'
)
GROUP BY ano_de_lancamento
HAVING COUNT(filme_id) > 100;
