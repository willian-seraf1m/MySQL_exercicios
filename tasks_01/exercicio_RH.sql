CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL NOT NULL,
    data_entrada DATE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, data_entrada)
VALUES("João Carlos", "Gerente", 5000.00, "2020-12-14"),
("Pedro Alves", "Secretário", 2500.00, "2020-12-14"),
("Ana Beatriz", "Secretária", 2000.00, "2020-12-14"),
("Lucas Antonio", "Motorista", 2000.00, "2020-12-14"),
("Maria dos Anjos", "Gerente", 2000.00, "2020-12-14");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario <= 2000;

UPDATE tb_colaboradores SET nome = "João Pedro" WHERE id = 1;
