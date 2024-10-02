SELECT COUNT(ator_id) AS total_atores, titulo
FROM filme_ator c, filme p, idioma l
where c.filme_id = p.filme_id and l.idioma_id = p.idioma_id and nome = 'English'
group by titulo



# WHERE idioma_id = (SELECT idioma_id FROM idioma WHERE nome = 'English');
