select classificacao, count(*) as Filme
from filme
group by classificacao