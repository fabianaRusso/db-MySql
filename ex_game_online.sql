-- Passo 1
create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
 id bigint auto_increment,
 nome varchar(255) NOT null,
 descricao varchar (255),
 primary key (id)
 );

-- Passo 2
CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    classe_id bigint,
    poder_ataque INT,
    poder_defesa INT,
    PRIMARY KEY(id)
);

-- Passo 3
ALTER TABLE tb_personagens ADD CONSTRAINT fk_classe_id 
FOREIGN KEY (classe_id) REFERENCES tb_classes (id);

-- Passo 4
INSERT INTO tb_classes (nome, descricao) values ("Mago", "indivíduo que realiza magia, feitiçaria");
INSERT INTO tb_classes (nome, descricao) values ("Elfo", "divindades maiores da natureza e da fertilidade");
INSERT INTO tb_classes (nome, descricao) values ("Humano", "Personagem com força física e grande conhecimento científico");
INSERT INTO tb_classes (nome, descricao) values ("Mutantes", "Humano com genética modificada");
INSERT INTO tb_classes (nome, descricao) values ("Deuses", "Seres com poderes divinos");
select * from tb_classes;

-- Passo 5
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id ) 
values ("Feiticeira Escarlate",7500, 6500, 1);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id ) 
values ("Doutor Estranho",6600, 5100, 1);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa,classe_id ) 
values ("Loki ",8100, 7500, 5);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id ) 
values ("Hulk",5700, 5200, 4);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id ) 
values ("Thor",4900, 4500, 5);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id ) 
values ("Viúva Negra",6300, 5270, 3);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id ) 
values ("Homen Codorna",1500, 2000, 3);
INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, classe_id ) 
values ("Legolas",2000, 2100, 2);
 select * from tb_personagens;
 
-- Passo 6
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
 
 -- Passo 7
 select * from tb_personagens where poder_defesa between 1000 and 2000;
 
 -- Passo 8
  select * from tb_personagens where nome Like "%c%";
  
  -- Passo 9
SELECT * from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

  -- Passo 10
SELECT * from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id where tb_classes.id = 1;
 
 drop database db_generation_game_online;