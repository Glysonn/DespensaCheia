//faker para gerar dados automáticos e popular as tabelas do sql.
const { faker } = require('@faker-js/faker');
//extensao da lib (faker-br) para gerar dados exclusivamente brasileiros (cpf, rg, cpnj).
const brfaker = require('faker-br');
//fazer o faker gerar os dados em formato BR
faker.locale = 'pt_BR';


//gera um número aleatório
function tamSenha(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min)
}

//GERA TODOS OS DADOS
const gerarDados = function () {
    fname = faker.name.firstName();    //primeiro nome
    lname = faker.name.lastName();    //sobrenome
    email = faker.internet.email(fname);   //email
    telefone = faker.phone.number('+55 ## 9########');    //telefone
    nasc = faker.date.birthdate();     //data de nascimento
    cpf = brfaker.br.cpf();       //cpf
    cnpj = brfaker.br.cnpj();      //cnpj
    cep = faker.address.zipCode();    //cep
    senha = faker.internet.password(tamSenha(5, 15));   //senha
    return fname, lname, email, telefone, nasc, cpf, cnpj, cep, senha;
};

module.exports = gerarDados;