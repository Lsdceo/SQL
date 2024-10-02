SELECT primeiro_nome, ultimo_nome from ator a, filme f, filme_ator fa
where titulo="blanket beverly" and f.filme_id = fa.filme_id and a.ator_id=fa.ator_id
