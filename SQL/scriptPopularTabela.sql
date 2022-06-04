---AS TABELAS SERÃO POPULADAS ATRAVÉS DO CÓDIGO FEITO EM NODE.JS.

USE despensacheia;

--- no values é passado o vetor  "beneficiarios", que contem todos os dados (em ordem) de cada atributo.
INSERT INTO beneficiario (cpf, f_name, l_name, email, cep, senha, telefone, nascimento) VALUES ?
--- no values é passado o vetor  "contribuidores", que contem todos os dados (em ordem) de cada atributo.
INSERT INTO contribuidor (cpf, f_name, l_name, email, cep, senha, telefone, nascimento) VALUES ?