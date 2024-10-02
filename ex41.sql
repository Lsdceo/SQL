SELECT duracao_do_filme,(SELECT AVG(duracao_do_filme) 
        FROM filme 
        WHERE idioma_id = i.idioma_id) AS media_duracao
FROM idioma i;

select avg(duracao_do_filme),idioma_id from filme
group by idioma_id

