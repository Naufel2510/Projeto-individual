var express = require("express");
var router = express.Router();

var enqueteController = require("../controllers/enqueteController");

router.get("/", function (req, res) {
    enqueteController.testar(req, res);
});

router.get("/listar", function (req, res) {
    enqueteController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de enqueteController.js
router.post("/cadastrar", function (req, res) {
    enqueteController.cadastrar(req, res);
})


router.post("/autenticar", function (req, res) {
    enqueteController.entrar(req, res);
});

module.exports = router;