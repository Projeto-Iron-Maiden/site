var albumModel = require("../models/albumModel");

function listar(req, res) {
    albumModel.listar().then(function (resultado) {
        // precisamos informar que o resultado voltará para o front-end como uma resposta em json
        res.status(200).json(resultado);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function cadastrar(req, res) {
    var cont = req.body.contServer;
    var idAlbum = req.body.idServer

    if (cont == undefined) {
        res.status(400).send("Seu cont está undefined!");
    }
    else if (idAlbum == undefined) {
        res.status(400).send("Seu idAlbum está undefined!");
    } else {

        albumModel.cadastrar(cont, idAlbum)

            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o envio dos dados! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );

    }
}

module.exports = {
    listar,
    cadastrar
}