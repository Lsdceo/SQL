select ator_id, count(filme_id) as madruga from filme_ator 
group by ator_id 
order by madruga desc