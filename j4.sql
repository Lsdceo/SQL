SELECT i.nome AS idioma
FROM filme f
JOIN idioma i ON f.idioma_id = i.idioma_id
GROUP BY i.nome;