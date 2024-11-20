/*1- select * from pais

2-  SELECT COUNT(*) AS quantidade_paises 
FROM pais;

3- SELECT COUNT(*) AS quantidade_paises 
FROM pais 
WHERE pais LIKE '%A';

4- SELECT DISTINCT YEAR(ano_de_lancamento) AS ano 
FROM filme;

5- select * from filme; update filme set ano_de_lancamento = 2007 where titulo like 'B%'

6- select titulo, duracao_do_filme, classificacao from filme where duracao_do_filme > 100 and classificacao like 'G'

7- UPDATE filme 
SET ano_de_lancamento = 2008 
WHERE duracao_da_locacao < 4 
  AND classificacao = 'PG';
  set sql_safe_updates=0;
  
8- SELECT COUNT(*) AS quantidade_filmes 
FROM filme 
WHERE classificacao = 'PG-13' 
  AND preco_da_locacao > 2.40;
  
9- SELECT DISTINCT idioma_id
FROM filme;

10- update filme
set ano_de_lancamento = 2007
where titulo like 'b%';

select * from filme;		

11- update filme
set ano_de_lancamento = '2008'
where duracao_da_locacao < 4 and classificacao = 'PG';
select ano_de_lancamento, classificacao, duracao_da_locacao from filme;
set SQL_SAFE_UPDATES = 0;

12- UPDATE filme
set idioma_id = 6
where preco_da_locacao > 4;

select idioma_id, preco_da_locacao from filme;

13- UPDATE filme
set idioma_id = 3
where preco_da_locacao = 0.99;

select idioma_id, preco_da_locacao from filme;

14- select distinct preco_da_locacao from filme;

15- select preco_da_locacao, count(filme_id) from filme group by preco_da_locacao;

16- select preco_da_locacao from filme group by preco_da_locacao > 340;

17- select filme_id, count(ator_id) as quantidade_ator from filme_ator group by filme_id order by filme_id desc;

18- select filme_id, count(ator_id) as quantidade_ator from filme_ator group by filme_id having quantidade_ator > 5 order by quantidade_ator desc;

19- select f.titulo, fa.filme_id, count(ator_id) as quantidade_de_atores from idioma i, filme f, filme_ator fa
where f.filme_id = fa.filme_id and f.idioma_id = 3
group by fa.filme_id having count(fa.ator_id) > 10
order by quantidade_de_atores desc;

select * from idioma;

20- select count(duracao_da_locacao) 
from filme 
where idioma_id = 3 or idioma_id = 6
and duracao_da_locacao = 7

21- select classificacao, preco_da_locacao, count(*) as Filme
from filme
group by classificacao, preco_da_locacao;

22- select max(duracao_da_locacao), categoria_id from filme_categoria, filme
group by categoria_id;

23- select classificacao, count(*) as Filme
from filme
group by classificacao

24- SELECT classificacao, COUNT(*) AS Quantidade_Filmes
FROM filme
WHERE classificacao = 'G'
GROUP BY classificacao;

25- select count(f.titulo), c.nome from filme as f, categoria c, filme_categoria fc
where f.classificacao ='G' and f.filme_id = fc.filme_id 
and fc.categoria_id = c.categoria_id
group by c.categoria_id

26- select count(filme.titulo), categoria.nome from filme, categoria, filme_categoria
where (filme.classificacao = 'G' or filme.classificacao='PG') and filme.filme_id = filme
and filme_categoria.categoria_id = categoria.categoria_id
group by caegoria.categoria_id

27- select count(filme.titulo), categoria.nome , filme.classificacao from filme, categoria, filme_categoria
where filme.filme_id = filme_categoria.filme_id
and filme_categoria.categoria_id = categoria.categoria_id
group by categoria.categoria_id, filme.classificacao

28- select count(f.filme_id), fa.ator_id from filme f, ator a, filme_ator fa
where f.filme_id = fa.filme_id
and a.ator_id = fa.ator_id
group by fa.filme_id
order by count(f.filme_id) desc;

29- SELECT ano_de_lancamento, COUNT(filme_id) AS quantidade_filmes
FROM filme
GROUP BY ano_de_lancamento

30- SELECT ano_de_lancamento, COUNT(*) AS quantidade_filmes
FROM filme
GROUP BY ano_de_lancamento
HAVING COUNT(*) > 400
ORDER BY quantidade_filmes DESC;

31- select ano_de_lancamento, count(titulo)
from filme f, filme_categoria fc
where preco_da_locacao > 2.98 and f.filme_id = fc.filme_id
and categoria_id = 3 
group by ano_de_lancamento
having count(titulo) > 100

32- select cidade, pais from cidade c, pais p
where c.pais_id = p.pais_id
AND pais like 'A%'
group by pais;


33- select count(cidade), pais 
from cidade c, pais p 
where p.pais_id = c.pais_id
group by p.pais
order by 1 desc;


34- select count(cidade), p.pais 
from cidade c, pais p
where p.pais_id = c.pais_id
AND pais like 'A%'
group by p.pais
order by p.pais asc;

35- select pais, cidade 
from cidade c, pais p
where p.pais_id = c.pais_id
AND pais like 'A%'
group by p.pais
having count(cidade_id) > 3;


36- select pais, cidade 
from cidade c, pais p
where p.pais_id = c.pais_id
AND (cidade like 'A%'
or cidade like '%R%')
group by p.pais
having count(cidade_id) > 3;


37- select primeiro_nome, pais
from cliente c, pais p, endereco e, cidade cdd
where c.endereco_id = e.endereco_id
and e.cidade_id = cdd.cidade_id
and cdd.pais_id = p.pais_id
and pais = "United States";


38- select count(primeiro_nome), pais
from cliente c, pais p, endereco e, cidade cdd
where c.endereco_id = e.endereco_id
and e.cidade_id = cdd.cidade_id
and cdd.pais_id = p.pais_id
and pais = "Brazil";

39- select count(primeiro_nome), pais
from cliente c, pais p, endereco e, cidade cdd
where c.endereco_id = e.endereco_id
and e.cidade_id = cdd.cidade_id
and cdd.pais_id = p.pais_id
group by pais


40- select count(primeiro_nome), pais
from cliente c, pais p, endereco e, cidade cdd
where c.endereco_id = e.endereco_id
and e.cidade_id = cdd.cidade_id
and cdd.pais_id = p.pais_id
group by pais
Having count(primeiro_nome) >= 10


41- select avg(duracao_do_filme), nome
from filme f, idioma i
where f.idioma_id = i.idioma_id
group by nome;


42- SELECT COUNT(ator_id) AS total_atores, titulo
FROM filme_ator c, filme p, idioma l
where c.filme_id = p.filme_id and l.idioma_id = p.idioma_id and nome = 'English'
group by titulo



# WHERE idioma_id = (SELECT idioma_id FROM idioma WHERE nome = 'English');

43- SELECT primeiro_nome, ultimo_nome from ator a, filme f, filme_ator fa
where titulo="blanket beverly" and f.filme_id = fa.filme_id and a.ator_id=fa.ator_id

44- SELECT count(titulo) , c.nome
FROM categoria c,filme_categoria fc, filme f
WHERE c.categoria_id = fc.categoria_id and f.filme_id = fc.filme_id
group by c.nome
having count(titulo) > 60

45- SELECT DISTINCT f.titulo
FROM filme f, inventario i, aluguel a, cliente c, endereco e, cidade ci, pais p
WHERE f.filme_id = i.filme_id
  AND i.inventario_id = a.inventario_id
  AND a.cliente_id = c.cliente_id
  AND c.endereco_id = e.endereco_id
  AND e.cidade_id = ci.cidade_id
  AND ci.pais_id = p.pais_id
  AND p.pais = 'Argentina';
  
46- SELECT COUNT(*) AS quantidade_alugueis
FROM cliente c, endereco e, cidade ci, pais p, aluguel a, inventario i, filme f
WHERE c.endereco_id = e.endereco_id
  AND e.cidade_id = ci.cidade_id
  AND ci.pais_id = p.pais_id
  AND p.pais = 'Chile'
  AND c.cliente_id = a.cliente_id
  AND a.inventario_id = i.inventario_id
  AND i.filme_id = f.filme_id;
  
47- SELECT a.funcionario_id, COUNT(*) AS quantidade_alugueis
FROM aluguel a
GROUP BY a.funcionario_id;

48- SELECT a.funcionario_id, fc.categoria_id, COUNT(*) AS quantidade_alugueis
FROM aluguel a, inventario i, filme_categoria fc
WHERE a.inventario_id = i.inventario_id
  AND i.filme_id = fc.filme_id
GROUP BY a.funcionario_id, fc.categoria_id;

49- SELECT f.titulo
FROM filme f
WHERE f.preco_da_locacao > (SELECT AVG(preco_da_locacao) FROM filme);

50- SELECT c.categoria_id, SUM(f.duracao_do_filme) AS soma_duracao
FROM filme f, filme_categoria fc, categoria c
WHERE f.filme_id = fc.filme_id
  AND fc.categoria_id = c.categoria_id
GROUP BY c.categoria_id;

51- SELECT YEAR(a.data_de_aluguel) AS ano,
       MONTH(a.data_de_aluguel) AS mes,
       COUNT(*) AS quantidade_filmes_locados
FROM aluguel a
GROUP BY ano, mes
ORDER BY ano, mes;

52- SELECT f.classificacao,
       SUM(p.valor) AS total_pago
FROM filme f, aluguel a, pagamento p, inventario i
WHERE a.inventario_id = i.inventario_id
  AND i.filme_id = f.filme_id
  AND a.aluguel_id = p.aluguel_id
  AND YEAR(a.data_de_aluguel) = 2006
GROUP BY f.classificacao;

53- SELECT MONTH(a.data_de_aluguel) AS mes,
       AVG(p.valor) AS media_valor_pago
FROM filme f, inventario i, aluguel a, pagamento p
WHERE f.filme_id = i.filme_id
  AND i.inventario_id = a.inventario_id
  AND a.aluguel_id = p.aluguel_id
  AND YEAR(a.data_de_aluguel) = 2005
GROUP BY MONTH(a.data_de_aluguel);

54- SELECT c.cliente_id,
       SUM(p.valor) AS total_pago
FROM cliente c, aluguel a, pagamento p, inventario i, filme f
WHERE a.cliente_id = c.cliente_id
  AND a.aluguel_id = p.aluguel_id
  AND a.inventario_id = i.inventario_id
  AND i.filme_id = f.filme_id
  AND MONTH(a.data_de_aluguel) = 6
  AND YEAR(a.data_de_aluguel) = 2006
GROUP BY c.cliente_id; */ 