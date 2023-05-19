var express = require("express");
var router = express.Router();

var dadosController = require("../controllers/dadosController");

router.get("/", function (req, res) {
    dadosController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de dadosController.js
router.post("/cadastrar", function (req, res) {
    dadosController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    dadosController.dados(req, res);
});

module.exports = router;