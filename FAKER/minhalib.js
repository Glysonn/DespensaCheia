
function gerarDados(){
const fname = faker.name.firstName();    //primeiro nome
const lname = faker.name.lastName();    //sobrenome
const email = faker.internet.email();   //email
const phone = faker.phone.phoneNumber();    //telefone
const nasc = faker.date.birthdate();     //data de nascimento
const cpf = brfaker.br.cpf();       //cpf
const cnpj = brfaker.br.cnpj();      //cnpj
const cep = faker.address.zipCode();    //cep
console.log("func gerar dadoss");
};

function tamSenha(min, max) { // min and max included 
    return Math.floor(Math.random() * (max - min + 1) + min)
  }