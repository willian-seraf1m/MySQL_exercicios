CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, marca, categoria, preco)
VALUES("Tênis Air Max", "Nike", "tenis", 600.00),
("Camisa Polo", "Polo", "Camisa", 50.00),
("Calça Social", "Polo", "Calça", 80.00),
("Camiseta Social", "polo", "camiseta", 90.00),
("Tenin Vans", "vans", "tenis", 300.00),
("Boné Lacoste", "Lacoste", "Boné", 150.00),
("Tênis Air force one", "Nike", "tenis", 600.00),
("Tênis Air Max 95", "Nike", "tenis", 700.00);


SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco <= 500;

UPDATE tb_produtos SET nome = "Tênis Air force" WHERE id = 1;


