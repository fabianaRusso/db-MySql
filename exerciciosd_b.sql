create database db_quitanda;

use db_quitanda;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
primary key(id)
);

insert into tb_produtos(nome, quantidade, preco)
values ("tomate", 100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);

SELECT nome FROM tb_produtos;
select nome, preco from tb_produtos;
select * from tb_produtos where id = 5;
select * from tb_produtos where nome = "Maça";
select * from tb_produtos where nome = "Fruta do Conde";
select nome from tb_produtos where preco < 10;
select nome from tb_produtos where preco > 5 and quantidade < 100;
update tb_produtos set preco = 5.00 where id = 1;
delete from tb_produtos where id = 2;
