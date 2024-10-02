select count(duracao_da_locacao) 
from filme 
where idioma_id = 3 or idioma_id = 6
and duracao_da_locacao = 7
