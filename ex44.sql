SELECT count(titulo) , c.nome
FROM categoria c,filme_categoria fc, filme f
WHERE c.categoria_id = fc.categoria_id and f.filme_id = fc.filme_id
group by c.nome
having count(titulo) > 60
