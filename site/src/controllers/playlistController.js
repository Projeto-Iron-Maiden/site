var playlistModel = require("../models/playlistModel");

function buscarAlbum(req, res) {

    var albumSelecionado = req.params.albumId

    console.log(`Recuperando as musicas em tempo real`);
    
    playlistModel.buscarAlbum(albumSelecionado).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as músicas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

module.exports = {
    buscarAlbum,
    adicionar
}