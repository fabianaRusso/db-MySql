 use db_pizzaria_legal;
 
 create table tb_categorias(
 id bigint auto_increment,
 descricao varchar (255) not null,
 primary key (id)
 );
 
INSERT INTO tb_categorias (descricao) values ("Salgada");
INSERT INTO tb_categorias (descricao) values ("Doce");
INSERT INTO tb_categorias (descricao) values ("Promoção");

select * from tb_categorias;

SELECT nome, quantidade, preco, descricao from tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * from tb_pizzas
LEFT JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * from tb_pizzas
right JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;


 
 
 
 
 