select classificacao, preco_da_locacao, count(*) as Filme
from filme
group by classificacao, preco_da_locacao;
