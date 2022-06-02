//faker para gerar dados automáticos e popular as tabelas do sql.
const { faker } = require('@faker-js/faker');
//extensao da lib (faker-br) para gerar dados exclusivamente brasileiros (cpf, rg, cpnj).
const brfaker = require('faker-br');

faker.locale = 'pt_BR';
//const fakerbr  = require('faker-br');
const contribuidores = [];
const beneficiarios = [];

//gera um número aleatório de 5 (tam minimo da senha) à 25 (tam max da senha)
function tamSenha(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min)
}

//GERANDO DADOS
for (let index = 0; index < 2; index++) {
    const fname = faker.name.firstName();    //primeiro nome
    const lname = faker.name.lastName();    //sobrenome
    const email = faker.internet.email(fname);   //email
    const telefone = faker.phone.phoneNumber();    //telefone
    const nasc = faker.date.birthdate();     //data de nascimento
    const cpf = brfaker.br.cpf();       //cpf
    const cnpj = brfaker.br.cnpj();      //cnpj
    const cep = faker.address.zipCode();    //cep
    const senha = faker.random.alphaNumeric(tamSenha(5, 20));   //senha
    //usuario contribuidor (Empresas)
    contrib = {
        cnpj, fname, lname, email, cep, senha, telefone
    }
    //usuario beneficiario
    benef = {
        cpf, fname, lname, email, cep, senha, telefone, nasc
    }
    contribuidores.push(contrib);
    beneficiarios.push(benef);
}

console.log("Beneficiários: ", beneficiarios);
console.log("Contribuidores: ", contribuidores);


//const { faker } = require('@faker-js/faker');
//console.log(contrib);