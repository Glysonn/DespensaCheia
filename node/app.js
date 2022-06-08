
//importando funções de outros arquivos
const gerarDados = require("./gerarDados"); //gera todos os dados necessários para o BD. 
const conectarBD = require("./bd"); //

const contribuidores = [];
const beneficiarios = [];

//GERAR DADOS CONTRIBUIDOR - O parâmetro na hora de chamar é a quantidade de dados a ser gerado. Ex.: gerarDadosContrib(1);
function gerarDadosContrib(qnt) {
    for (index = 0; index < qnt; index++) {
        gerarDados();
        //usuario contribuidor (Empresas) e atributos
        contrib = { cnpj, fname, lname, email, cep, senha, telefone };
        contribuidores.push(Object.values(contrib));
    }
}

//GERAR DADOS Beneficiário - O parâmetro é a quantidade de dados a ser gerado. Ex.: gerarDadosBenef(1);
function gerarDadosBenef(qnt) {
    for (index = 0; index < qnt; index++) {
        gerarDados();
        //usuario beneficiario e atributos
        benef = { cpf, fname, lname, email, cep, senha, telefone, nasc };
        beneficiarios.push(Object.values(benef));
    }
}

//CONEXÃO COM O BANCO DE DADOS
conectarBD();   //função presente no arquivo bd.js

//injetando comandos SQL no BD.
function inserirDadosBd() {

    con.connect(function (err) {
        if (err) throw err;
        console.log("Conexão com o banco feita com sucesso!");

    });
}

//DADOS DE CONTRIBUIDOR
function InserirDadosContrib(qnt) {

    let insertContrib = "INSERT INTO contribuidor (cnpj, f_name, l_name, email, cep, senha, telefone) VALUES ?";
    //!!!  importante escolher quantas vezes os dados serão gerados !!!
    gerarDadosContrib(qnt);
    //selecionando o db
    con.query("USE despensacheia", function (err, result) {
        if (err) throw err;
    });
    // adicionando os dados
    con.query(insertContrib, [contribuidores], function (err, result) {
        if (err) throw err;
        console.log("Dados de contribuidor adicionados!");
    });
}

//DADOS DE BENEFICIÁRIO
function InserirDadosBenef(qnt) {
    //código sql
    let insertBenef = "INSERT INTO beneficiario (cpf, f_name, l_name, email, cep, senha, telefone, nascimento) VALUES ?"
    //gerando os dados
    gerarDadosBenef(qnt);


    //selecionando o db
    con.query("USE despensacheia", function (err, result) {
        if (err) throw err;
    });
    // adicionando os dados
    con.query(insertBenef, [beneficiarios], function (err, result) {
        if (err) throw err;
        console.log("Dados de beneficiários adicionados!");
    });
}





//NECESSÁRIO
inserirDadosBd();

//(passar como parâmetro a quantidade de vezes que vai gerar o dado)
InserirDadosContrib(5);  //insere os dados gerados de contribuidor
InserirDadosBenef(5); //insere os dados gerados de beneficiário