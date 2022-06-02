CREATE SCHEMA despensacheia;
---
USE despensacheia;
---
CREATE TABLE contribuidor(
cnpj varchar(18) NOT NULL PRIMARY KEY,
f_name varchar(100) NOT NULL,
l_name varchar(100) NOT NULL,
email varchar(100) NOT NULL,
cep char(9) NOT NULL,
senha varchar(20) NOT NULL,
telefone varchar(19) NOT NULL
);
---
CREATE TABLE beneficiario(
cpf varchar(15) NOT NULL PRIMARY KEY,
f_name varchar(100) NOT NULL,
l_name varchar(100) NOT NULL,
email varchar(100) NOT NULL,
cep char(9) NOT NULL,
senha varchar(20) NOT NULL,
telefone varchar(19),
nascimento DATE NOT NULL
);
---
CREATE TABLE pacote(
id INT NOT NULL PRIMARY KEY,
cnpj_contribuidor varchar(18) NOT NULL, 
cpf_beneficiario varchar(15) NOT NULL,
FOREIGN KEY (cnpj_contribuidor) REFERENCES contribuidor(cnpj),
FOREIGN KEY (cpf_beneficiario) REFERENCES beneficiario(cpf)
);
---
CREATE TABLE itens_pacote(
nomeitem VARCHAR(30),
quantidade BIT
);
---
