CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_rh(
id_rh BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_colab VARCHAR(255),
salario DECIMAL(8,2),
funcao VARCHAR (255),
presensa BOOLEAN
);

SELECT * FROM tb_rh;
INSERT INTO  tb_rh(nome_colab,salario,funcao,presensa)VALUES("Letícia Borges",4800.00,"Analista",false);
SELECT * FROM tb_rh WHERE salario > 2000.00;
SELECT * FROM tb_rh WHERE salario < 2000.00;
UPDATE tb_rh SET presenca = true WHERE id_rh=3