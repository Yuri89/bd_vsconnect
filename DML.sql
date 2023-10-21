use bd_vsconnect;

insert into tb_techs values(UUID_TO_BIN(UUID()), "html"),
(UUID_TO_BIN(UUID()), "css"),
(UUID_TO_BIN(UUID()), "xmls"),
(UUID_TO_BIN(UUID()), "javascript"),
(UUID_TO_BIN(UUID()), "phyton"),
(UUID_TO_BIN(UUID()), "java"),
(UUID_TO_BIN(UUID()), "c#");

SELECT BIN_TO_UUID(id_tech), nome FROM tb_techs;

insert into tb_usuarios values(
	UUID_TO_BIN(UUID()),
    "Odirlei",
    "odirlei@email.com",
    "senai",
    "Rua Niterói, 180",
    "12345-678",
    0
);

insert into tb_usuarios values(
	UUID_TO_BIN(UUID()),
    "Jessica",
    "jessica@email.com",
    "senai",
    "Rua Niterói, 180",
    "12345-678",
    0
);

insert into tb_usuarios values(
	UUID_TO_BIN(UUID()),
    "Aléxia",
    "alexia@email.com",
    "senai",
    "Rua Niterói, 180",
    "12345-678",
    0
);

SELECT * FROM tb_usuarios;
SELECT * FROM tb_dev_tech;
SELECT BIN_TO_UUID(id_usuario), nome FROM tb_usuarios;
SELECT BIN_TO_UUID(id_tech), nome FROM tb_techs;

DELETE FROM tb_usuarios WHERE id_usuario = UUID_TO_BIN("30a8c7cf-6edd-11ee-a0a1-b445067b858d");

UPDATE tb_usuarios
SET tipo_usuario = 1
WHERE id_usuario = UUID_TO_BIN("0177dc74-6ed9-11ee-a0a1-b445067b858d");

INSERT INTO tb_dev_tech VALUES (UUID_TO_BIN("30a9227b-6edd-11ee-a0a1-b445067b858d") , UUID_TO_BIN("3d25ba53-6edf-11ee-a0a1-b445067b858d"));
INSERT INTO tb_dev_tech VALUES (UUID_TO_BIN("30a9227b-6edd-11ee-a0a1-b445067b858d") , UUID_TO_BIN("b88fa5c5-6ed7-11ee-a0a1-b445067b858d"));

INSERT INTO tb_servicos VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("0177dc74-6ed9-11ee-a0a1-b445067b858d"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("0177dc74-6ed9-11ee-a0a1-b445067b858d"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("0177dc74-6ed9-11ee-a0a1-b445067b858d"), NULL);

select BIN_TO_UUID(id_servico), titulo from tb_servicos;

Insert into tb_cotacao values(
	UUID_TO_BIN(UUID()),
    10000.00,
    UUID_TO_BIN("30a9227b-6edd-11ee-a0a1-b445067b858d"),
    UUID_TO_BIN("49104776-6f98-11ee-a0a1-b445067b858d")
);

INSERT INTO tb_tech_servico VALUES (UUID_TO_BIN("3d25ba53-6edf-11ee-a0a1-b445067b858d") , UUID_TO_BIN("49104776-6f98-11ee-a0a1-b445067b858d"));
INSERT INTO tb_tech_servico VALUES (UUID_TO_BIN("b88fa5c5-6ed7-11ee-a0a1-b445067b858d") , UUID_TO_BIN("49104776-6f98-11ee-a0a1-b445067b858d"));
