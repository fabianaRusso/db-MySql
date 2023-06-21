create database db_pizzaria_legal;

 use db_pizzaria_legal;
 
 create table tb_pizzas(
 id bigint auto_increment,
 nome varchar(255) not null,
 quantidade int,
 preco decimal not null,
 primary key (id)
 );
 
 INSERT INTO tb_pizzas(nome, quantidade, preco) 
values ("Calabresa",10, 35.80);
INSERT INTO tb_pizzas(nome, quantidade, preco) 
values ("Peperoni",15, 48.90);
INSERT INTO tb_pizzas(nome, quantidade, preco) 
values ("Quatro queijos",18, 49.99);
INSERT INTO tb_pizzas(nome, quantidade, preco) 
values ("Frango- catupiry",30, 54.80);
INSERT INTO tb_pizzas(nome, quantidade, preco) 
values ("A moda da casa",12, 58.99);
INSERT INTO tb_pizzas(nome, quantidade, preco) 
values ("Brigadeiro",8, 52.99);

INSERT INTO tb_pizzas(nome, quantidade, preco,categorias_id) 
values ("Portuguesa",19, 36.90,1);
INSERT INTO tb_pizzas(nome, quantidade, preco,categorias_id) 
values ("Nutella",22, 57.80,3);

-- criando uma coluna nova na tabela pizzas
ALTER TABLE tb_pizzas ADD categorias_id bigint;

-- alterando a estrutura da tabela pizzas relacionando a tabela categorias
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

select * from tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";




 
 