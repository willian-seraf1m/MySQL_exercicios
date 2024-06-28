CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    turma VARCHAR(255) NOT NULL,
    nota_media DECIMAL NOT NULL,
    serie INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, turma, nota_media, serie)
VALUES("João Carlos", "2a", 10, 2),
("Pedro Alves", "7d", 5, 7),
("Ana Beatriz", "6b", 8, 6),
("Lucas Antonio", "8a", 6, 8),
("Maria dos Anjos", "9c", 9, 9);

SELECT * FROM tb_alunos WHERE nota_media > 7;

SELECT * FROM tb_alunos WHERE nota_media <= 7;

UPDATE tb_alunos SET nome = "João Antonio" WHERE id = 1;