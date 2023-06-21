create database db_rhservico;

use db_rhservico;

create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
cpf varchar(255),
idade int,
cidade varchar(255),
salario decimal not null,
primary key (id)
);

insert into tb_colaboradores(nome, cpf, idade, cidade, salario)
values ("João Silva", "372987163-01", 40, "Sorocaba", 1200.00);
insert into tb_colaboradores(nome, cpf, idade, cidade, salario)
values ("Maria Correia", "271852341-02", 52, "Guarulhos", 1350.00);
insert into tb_colaboradores(nome, cpf, idade, cidade, salario)
values ("Julieta Romana", "489587123-12", 25, "Pirituba", 1680.00);
insert into tb_colaboradores(nome, cpf, idade, cidade, salario)
values ("Romeu Romero", "345874548-24", 30, "Morumbi", 2200.00);
insert into tb_colaboradores(nome, cpf, idade, cidade, salario)
values ("Bento Ferraz", "487957214-15", 27, "Vila Olímpia", 2600.00);
insert into tb_colaboradores(nome, cpf, idade, cidade, salario)
values ("Capitu Coimbra", "574246321-16", 24, "Santo Amaro", 3200.00);

select nome from tb_colaboradores;
select * from tb_colaboradores;
select nome from tb_colaboradores where salario > 2000;
select nome from tb_colaboradores where salario < 2000;



