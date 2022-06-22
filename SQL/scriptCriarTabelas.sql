CREATE SCHEMA IF NOT EXISTS despensacheia;
--
USE despensacheia;
--
CREATE TABLE IF NOT EXISTS contribuidor(
cnpj char(14) NOT NULL PRIMARY KEY,
f_name varchar(100) NOT NULL,
l_name varchar(100) NOT NULL,
email varchar(100) NOT NULL,
cep char(9) NOT NULL,
senha varchar(20) NOT NULL,
telefone char(16) NOT NULL
);
--
CREATE TABLE IF NOT EXISTS beneficiario(
cpf char(11) NOT NULL PRIMARY KEY,
f_name varchar(100) NOT NULL,
l_name varchar(100) NOT NULL,
email varchar(100) NOT NULL,
cep char(8) NOT NULL,
senha varchar(20) NOT NULL,
telefone char(16),
nascimento DATE NOT NULL
);
--
CREATE TABLE IF NOT EXISTS item_pacote(
id_item INT NOT NULL PRIMARY KEY,
nomeitem VARCHAR(30),
quantidade TINYINT CHECK (quantidade>0)
);
--
CREATE TABLE IF NOT EXISTS pacote(
id_pacote INT NOT NULL PRIMARY KEY,
id_item INT NOT NULL PRIMARY KEY,
cnpj_contribuidor varchar(18) NOT NULL, 
cpf_beneficiario varchar(15) NOT NULL,
FOREIGN KEY (cnpj_contribuidor) REFERENCES contribuidor(cnpj),
FOREIGN KEY (id_item) REFERENCES item_pacote(id_item)
);
--
