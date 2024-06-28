CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    categoria_poder VARCHAR(100) NOT NULL,
    personalidade VARCHAR(100) NOT NULL
);

INSERT INTO tb_classes(categoria_poder, personalidade)
VALUES("fogo", "vilão"),
("agua", "herói"),
("gelo", "herói"),
("vento", "vilão"),
("terra", "herói"); 

select * from tb_classes;

-- DROP TABLE tb_personagens;

CREATE TABLE tb_personagens(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    grupo VARCHAR(100) NOT NULL,
    poder_ataque INT,
    defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_personagens(nome, grupo, poder_ataque, defesa, classe_id)
VALUES("Jon Hector", "liga da injustiça", 1000, 1500, 1),
("Walter", "Los Heróis", 1500, 2000, 2),
("PinkMan", "Los Heróis", 2200, 1000, 3),
("The Man", "liga da injustiça", 3000, 999, 4),
("Bat", "liga da injustiça", 5000, 2600, 4),
("Aguia", "Los Heróis", 4900, 3000, 2),
("Dog", "Los Heróis", 1060, 1100, 2),
("Coringa", "liga da injustiça", 3000, 1440, 1);

SELECT * FROM tb_personagens WHERE poder_ataque <= 2000;

SELECT * FROM tb_personagens WHERE poder_ataque BETWEEN 1000 AND 2000; 

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, grupo, poder_ataque, defesa, tb_classes.categoria_poder, tb_classes.personalidade 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

SELECT nome, grupo, poder_ataque, defesa, tb_classes.categoria_poder, tb_classes.personalidade 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id WHERE categoria_poder = "vento";

