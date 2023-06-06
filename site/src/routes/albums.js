var express = require("express");
var router = express.Router();

var albumController = require("../controllers/albumController");

router.put("/cadastrar", function (req, res) {
    // função a ser chamada quando acessar /albums/cadastrar
    albumController.cadastrar(req, res);
});

router.get("/calcularVezes", function (req, res) {
    albumController.calcularVezes(req, res);
});

module.exports = router;