var database = require("../database/config")

function listar() {
    console.log("ACESSEI O ENQUETE MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT * FROM voto;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}


// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function cadastrar(nome, id, enquete) {
   
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO voto (fkEnquete, fkUsuario, voto) VALUES (${Number(enquete)}, ${Number(id)}, '${nome}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    
    var carro = `
        UPDATE usuario SET enquete${Number(enquete)} = ${Number(enquete)} WHERE idLogin = ${Number(id)};
    `;
    console.log("Executando a instrução SQL: \n" + carro);
    return database.executar(instrucao) && database.executar(carro);
}


module.exports = {
    cadastrar,
    listar
};