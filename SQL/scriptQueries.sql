-- ---------------------------------------------------------------------------------------------------------------------
-- 										SELECT

select id_pacote as 'pacote', bebida, nome_mercado as 'mercado', cnpj_contribuidor as 'contribuidor' from pacote where bebida>0; 
-- seleciona mercados com pacote que contenha ao menos uma bebida(boolean true)

select perecivel, nome_mercado as 'mercado', cnpj_contribuidor as 'contribuidor' from pacote where perecivel = 0; 
-- seleciona mercados que possuam pacotes sem alimentos perecíveis inclusos

select perecivel, nome_mercado as 'mercado', cnpj_contribuidor as 'contribuidor' from pacote where perecivel = 1; 
-- seleciona mercados que possuam pacotes COM ao menos um alimento perecivel incluso

select  nome_mercado as 'mercado', id_pacote as 'pacote' from pacote  where item1 ='arroz' or item2 ='arroz' or item3 ='arroz' or item4 ='arroz'
or item5='arroz' or item6 ='arroz'or item7='arroz'
or item8='arroz' or item9='arroz' or item10 = 'arroz'; 
-- seleciona qual/quais pacotes de qual/quais supermercados têm, por exemplo, arroz em sua composição

select  nome_mercado as 'mercado', id_pacote 'pacote' from pacote  where item1 ='farofa' or item2 ='farofa' or item3 ='farofa' or item4 ='farofa'
or item5='farofa' or item6 ='farofa'or item7='farofa'
or item8='farofa' or item9='farofa' or item10 = 'farofa'; 
-- seleciona qual/quais pacotes de qual/quais supermercados têm, por exemplo, farofa em sua composição

select f_name from contribuidor where f_name like 'bonanza';
select * from contribuidor;

select nome_mercado, cnpj_contribuidor from pacote where descricao like 'não perecivel'; 
-- exemplo de busca por descrição
