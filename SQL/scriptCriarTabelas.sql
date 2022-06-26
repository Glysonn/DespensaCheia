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
cep char(9) NOT NULL,
senha varchar(20) NOT NULL,
telefone char(16),
nascimento DATE NOT NULL
);
--
CREATE TABLE IF NOT EXISTS item_pacote(
nomeitem VARCHAR(30),
quantidade INT CHECK (quantidade>0)
);

--
CREATE TABLE IF NOT EXISTS pacote(
id_pacote INT NOT NULL PRIMARY KEY,
cnpj_contribuidor char(14) NOT NULL, 
CONSTRAINT fk_cnpj FOREIGN KEY (cnpj_contribuidor) REFERENCES contribuidor(cnpj)
);
--
ALTER TABLE pacote ADD COLUMN (perecivel BOOLEAN);
ALTER TABLE pacote ADD COLUMN (descricao TEXT);
ALTER TABLE pacote ADD COLUMN (bebida BOOLEAN);

ALTER TABLE pacote ADD COLUMN (item1 VARCHAR(30), item2 VARCHAR(30), item3 VARCHAR(30),
item4 VARCHAR(30), item5 VARCHAR(30), item6 VARCHAR(30), item7 VARCHAR(30), item8 VARCHAR(30),
item9 VARCHAR(30), item10 VARCHAR(30)
);
