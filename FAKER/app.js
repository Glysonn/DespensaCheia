//faker para gerar dados automáticos e popular as tabelas do sql.
const { faker } = require('@faker-js/faker');
//extensao da lib (faker-br) para gerar dados exclusivamente brasileiros (cpf, rg, cpnj).
const brfaker = require('faker-br');
//fazer o faker gerar os dados em formato BR
faker.locale = 'pt_BR';

const contribuidores = [];
const beneficiarios = [];

//gera um número aleatório
function tamSenha(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min)
}
function gerarDados() {
    fname = faker.name.firstName();    //primeiro nome
    lname = faker.name.lastName();    //sobrenome
    email = faker.internet.email(fname);   //email
    telefone = faker.phone.phoneNumber();    //telefone
    nasc = faker.date.birthdate();     //data de nascimento
    cpf = brfaker.br.cpf();       //cpf
    cnpj = brfaker.br.cnpj();      //cnpj
    cep = faker.address.zipCode();    //cep
    senha = faker.random.alphaNumeric(tamSenha(5, 15));   //senha
    return fname, lname, email, telefone, nasc, cpf, cnpj, cep, senha;
};
//GERAR DADOS CONTRIBUIDOR - O parâmetro é a quantidade de dados a ser gerado. Ex.: gerarDadosContrib(1);
function gerarDadosContrib(qnt) {
    for (index = 0; index < qnt; index++) {
        gerarDados();
        //usuario contribuidor (Empresas)
        contrib = { cnpj, fname, lname, email, cep, senha, telefone };
        //console.log(contrib);
        contribuidores.push(Object.values(contrib));
    }
}
//GERAR DADOS Beneficiário - O parâmetro é a quantidade de dados a ser gerado. Ex.: gerarDadosBenef(1);
function gerarDadosBenef(qnt) {
    for (index = 0; index < qnt; index++) {
        gerarDados();
        //usuario beneficiario
        benef = { cpf, fname, lname, email, cep, senha, telefone, nasc };
        beneficiarios.push(benef);
    }
}

//CONEXÃO COM O BANCO DE DADOS
var mysql = require('mysql');
const { mergeFlags } = require('mysql/lib/ConnectionConfig');
//setando o servidor
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "teste"
});

//SETANDO VALORES NOS VETORES DE USUARIOS
gerarDadosContrib(2);

//injetando comandos SQL no BD.

con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
   // var usedb = "USE despensacheia";
    var sql = "INSERT INTO contribuidor (cnpj, f_name, l_name, email, cep, senha, telefone) VALUES ?";


    function InserirDadosBd(){
    //selecionando o db
    con.query("USE despensacheia", function (err, result) {
        if (err) throw err;
      }); 
    // adicionando os dados
    con.query(sql, [contribuidores] , function (err, result) {
        if (err) throw err;
        console.log("Dados adicionados!");
      }); 
    }
    InserirDadosBd();

});