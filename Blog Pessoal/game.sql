CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo_classe VARCHAR(255),
subclasse VARCHAR (255)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
skill VARCHAR(255),
hp BIGINT,
mp BIGINT,
classe_id BIGINT NOT NULL,

FOREIGN KEY (classe_id)  REFERENCES tb_classe (id)

);

SELECT * FROM tb_classe;

INSERT INTO tb_classe(tipo_classe, subclasse)VALUES("Mago","Ilusionista");
INSERT INTO tb_classe(tipo_classe, subclasse)VALUES("Guerreiro","Cavaleiro");
INSERT INTO tb_classe(tipo_classe, subclasse)VALUES("Arqueiro","Caçador");
INSERT INTO tb_classe(tipo_classe, subclasse)VALUES("Ninja","Assassino");
INSERT INTO tb_classe(tipo_classe, subclasse)VALUES("Clérigo","Curandeiro");

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens(nome, skill, hp, mp,classe_id)VALUES("Sona","Alta Resistência, baixo dano, cura master",1750,500,4);
INSERT INTO tb_personagens(nome, skill, hp, mp,classe_id)VALUES("Reyna","Alta Resistência, alto dano, cura master",5000,2500,1);
INSERT INTO tb_personagens(nome, skill, hp, mp,classe_id)VALUES("Bruno","Alta Resistência, alto dano, baixa cura",3080,480,2);
INSERT INTO tb_personagens(nome, skill, hp, mp,classe_id)VALUES("Poro","Alta Resistência, baixo dano, cura moderada",1000,500,4);
INSERT INTO tb_personagens(nome, skill, hp, mp,classe_id)VALUES("Sarah","Baixa Resistência, alto dano, baixa dura",6000,350,3);
INSERT INTO tb_personagens(nome, skill, hp, mp,classe_id)VALUES("Açai","Alta Resistência, baixo dano, baixa cura",855,100,3);
INSERT INTO tb_personagens(nome, skill, hp, mp,classe_id)VALUES("Léia","Baixa Resistência, baixo dano, cura master",550,1500,5);
INSERT INTO tb_personagens(nome, skill, hp, mp,classe_id)VALUES("Tylon","Baixa Resistência, Alto dano, baixa cura",550,250,4);

SELECT * FROM tb_personagens WHERE hp < 2000;

SELECT * FROM 	tb_personagens WHERE nome LIKE "%Ty%";

SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_classe.id = tb_personagens.classe_id;






