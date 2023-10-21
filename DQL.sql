use bd_vsconnect;

select MIN(proposta) from tb_servicos;
select MAX(proposta) from tb_servicos;

select titulo, proposta
from tb_servicos
where proposta = (select MIN(proposta) from tb_servicos);

select COUNT(id_servico) from tb_servicos;

select COUNT(id_servico), status_servico
from tb_servicos
where status_servico = "Em andamento";

select COUNT(id_servico), status_servico
from tb_servicos
group by status_servico;

select SUM(proposta) from tb_servicos;

select * from tb_servicos where tb_servicos.titulo LIKE "Dashboard";

select titulo from tb_servicos order by titulo asc;
select titulo from tb_servicos order by titulo desc;

/*INNER JOIN*/
select titulo, tb_techs.nome
from tb_servicos
inner join tb_techs; 

select * 
from tb_cotacao
inner join tb_servicos on tb_cotacao.id_servico = tb_servicos.id_servico
inner join tb_usuarios on tb_cotacao.id_dev = tb_usuarios.id_usuario;

select tb_cotacao.valor, tb_servicos.titulo, tb_usuarios.nome
from tb_cotacao
inner join tb_servicos on tb_cotacao.id_servico = tb_servicos.id_servico
inner join tb_usuarios on tb_cotacao.id_dev = tb_usuarios.id_usuario;