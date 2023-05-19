var express = require("express");
var router = express.Router();

var timeController = require("../controllers/timeController");

router.get("/", function (req, res) {
    timeController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de timeController.js
router.post("/cadastrar", function (req, res) {
    timeController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    timeController.time(req, res);
});

module.exports = router;