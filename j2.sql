SELECT * FROM convidado c 
left join presente p
ON c.ID_CONVIDADO = p.ID_CONVIDADO
where ID_PRESENTE is null

