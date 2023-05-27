var express = require("express");
var router = express.Router();

var albumController = require("../controllers/albumController");

router.post("/cadastrar", function (req, res) {
    // função a ser chamada quando acessar /albums/cadastrar
    albumController.cadastrar(req, res);
});

router.get("/listar", function (req, res) {
    // função a ser chamada quando acessar /albums/listar
    albumController.listar(req, res);
});

module.exports = router;