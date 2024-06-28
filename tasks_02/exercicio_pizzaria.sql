CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(100) NOT NULL,
    borda VARCHAR(100) NOT NULL
);

INSERT INTO tb_categoria(categoria, borda)
VALUES("doce", "com recheio"),
("doce", "sem recheio"),
("salgada", "com recheio"),
("salgada", "sem recheio"),
("vegetariana", "sem recheio"); 

CREATE TABLE tb_pizzas (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    sabor1 VARCHAR(100) NOT NULL,
    sabor2 VARCHAR(100) NOT NULL,
    preco DECIMAL NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_pizzas(nome, sabor1, sabor2, preco, categoria_id)
VALUES("Pizza calabresa queijo","calabresa", "queijo", 30, 3),
("Pizza calabresa", "calabresa", "Calabresa", 45, 3),
("Pizza a Moda da casa", "frango", "queijo", 80, 3),
("Pizza Frango catupiry", "frango catupiry", "calabresa", 99, 3),
("Pizza Chocolate com creme de leite", "Chocolate", "creme de leite", 59, 1),
("Pizza Chocolate com morango", "chocolate", "morango", 49, 2),
("Pizza Churros com m&m", "churros", "m&m", 100, 2),
("Pizza de Brócolis com palimito", "brócolis", "palmito", 90, 5);


SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00; 

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, sabor1, sabor2, preco, tb_categoria.categoria, tb_categoria.borda
FROM tb_pizzas INNER JOIN tb_categoria 
ON tb_pizzas.categoria_id = tb_categoria.id;

SELECT nome, sabor1, sabor2, preco, tb_categoria.categoria, tb_categoria.borda
FROM tb_pizzas INNER JOIN tb_categoria 
ON tb_pizzas.categoria_id = tb_categoria.id WHERE categoria = "doce";