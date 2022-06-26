---AS TABELAS TAMBÉM PODEM SER POPULADAS ATRAVÉS DE DADOS ALEATÓRIOS GERADOS AUTOMATICAMENTE

USE despensacheia;
-- ---------------------------------------------------------------------------------------------------------------------
-- 										INSERTS
insert into contribuidor values 
(12345678912345, 'bonanza', 'mercado', 'mercado1@gmail.com',00000000,'123456788','81900000000'),
(22222222222222, 'mercado seu zé', 'mercado', 'mercadoseuze@gmail.com',00000001,'123456788','81900000020');

insert into beneficiario values
(00000000001, 'zezinho', 'da silva', 'zezinhobonitin@gmail.com', 00200500, 423423424, 00011010134, '1998-03-03'),
(00000000002, 'douglas', 'santos', 'abububle@gmail.com', 00203530, 42343453424, 00011014534, '2000-09-23');

INSERT INTO pacote values
(1,12345678912345, true, 'Perecivel, bebida,não perecivel',true,'suco de uva','maça','arroz','macarrao','','','','','',''),
(2,12345678912345, false, 'não perecivel',false,'farinha','farofa','fuba','','','','','','',''),
(3,22222222222222, true, 'perecível, não perecível',false,'farinha','farofa','massa de bolo','tomate','cenoura','macaxeira','laranja','','','');
-- -----------------------------------------------------------------------------------------------------------------------

-- 									UPDATES
update pacote set nome_mercado = 'bonanza' where cnpj_contribuidor=12345678912345;
update pacote set nome_mercado = 'mercado do seu zé' where cnpj_contribuidor=22222222222222;