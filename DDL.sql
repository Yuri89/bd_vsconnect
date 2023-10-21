create schema bd_vsconnect;

use bd_vsconnect;

create table tb_techs(
	id_tech binary(16) not null,
    nome varchar(50) not null unique,
    primary key(id_tech)
);

create table tb_usuarios(
	id_usuario binary(16) not null,
    nome varchar(255) not null,
    email varchar(255) not null unique,
    senha varchar(255) not null,
    endereco varchar(255),
    cep varchar(9),
    tipo_usuario tinyint not null,
    primary key(id_usuario)
);

create table tb_dev_tech(
	id_dev binary(16) not null,
    id_tech binary(16) not null,
    foreign key(id_dev) references tb_usuarios(id_usuario),
    foreign key(id_tech) references tb_techs(id_tech)
);

create table tb_servicos(
	 id_servico binary(16) not null,
     titulo varchar(255) not null,
     descricao text not null,
     proposta decimal(10,2) not null,
     status_servico varchar(50) not null,
     id_cliente binary(16) not null,
     id_dev binary(16) not null,
     primary key(id_servico),
     foreign key(id_cliente) references tb_usuarios(id_usuario),
     foreign key(id_dev) references tb_usuarios(id_usuario)
);

create table tb_cotacao(
	id_cotacao binary(16) not null,
    valor decimal(10, 2) not null,
    id_dev binary(16) not null,
    id_servico binary(16) not null,
    primary key(id_cotacao),
    foreign key(id_dev) references tb_usuarios(id_usuario),
    foreign key(id_servico) references tb_servicos(id_servico)
);

create table tb_tech_servico(
	id_tech binary(16) not null,
    id_servico binary(16) not null,
    foreign key(id_tech) references tb_techs(id_tech),
    foreign key(id_servico) references tb_servicos(id_servico)
);

alter table tb_servicos change column id_dev id_dev binary(16) null;