CREATE SCHEMA despensacheia IF NOT EXISTS;
---
USE despensacheia;
---
CREATE TABLE contribuidor IF NOT EXISTS(
cnpj varchar(18) NOT NULL PRIMARY KEY,
f_name varchar(100) NOT NULL,
l_name varchar(100) NOT NULL,
email varchar(100) NOT NULL,
cep char(9) NOT NULL,
senha varchar(20) NOT NULL,
telefone varchar(19) NOT NULL
);
---
CREATE TABLE beneficiario IF NOT EXISTS(
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
CREATE TABLE pacote IF NOT EXISTS(
id INT NOT NULL PRIMARY KEY,
cnpj_contribuidor varchar(18) NOT NULL, 
cpf_beneficiario varchar(15) NOT NULL,
FOREIGN KEY (cnpj_contribuidor) REFERENCES contribuidor(cnpj),
FOREIGN KEY (id_item) REFERENCES item_pacote(id)
);
---
CREATE TABLE item_pacote IF NOT EXISTS(
id INT NOT NULL PRIMARY KEY,
nomeitem VARCHAR(30),
quantidade BIT CHECK (quantidade>0)
);
---
