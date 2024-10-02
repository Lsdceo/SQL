UPDATE filme 
SET ano_de_lancamento = 2008 
WHERE duracao_da_locacao < 4 
  AND classificacao = 'PG';
  set sql_safe_updates=0;
