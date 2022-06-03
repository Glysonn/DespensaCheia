//Tive que usar o seguinte comando no banco de dados pois não estava conectando:
//ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'teste'; flush privileges;

//CONEXÃO COM O BANCO DE DADOS

const bd = function () {
    var mysql = require('mysql');
    const { mergeFlags } = require('mysql/lib/ConnectionConfig');
    //Setando o servidor
    con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "teste"
    });
    return con;
}
module.exports = bd;