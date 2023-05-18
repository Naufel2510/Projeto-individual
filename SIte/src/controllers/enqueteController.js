var enqueteModel = require("../models/enqueteModel");

var sessoes = [];

function testar(req, res) {
    console.log("ENTRAMOS NA enqueteController");
    res.json("ESTAMOS FUNCIONANDO!");
}

function listar(req, res) {
    enqueteModel.listar()
        .then(function (resultado) {
            if (resultado.length > 0) {
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(
            function (erro) {
                console.log(erro);
                console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
}



function cadastrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo enquete.html
    var nome = req.body.nomeServer;

    var id = req.body.idServer;

    var enquete = req.body.enqueteServer;


    // Faça as validações dos valores
    if (nome == undefined) {
        res.status(400).send("Seu nome está undefined!");
    } else {
        
        // Passe os valores como parâmetro e vá para o arquivo enqueteModel.js
        enqueteModel.cadastrar(nome,id,enquete)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o enquete! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}



module.exports = {
    cadastrar,
    listar,
    testar
}