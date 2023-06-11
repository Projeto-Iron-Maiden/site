var express = require("express");
var router = express.Router();

var playlistController = require("../controllers/playlistController");

router.get("/buscarAlbum/:albumId", function (req, res) {
    playlistController.buscarAlbum(req, res);
});

module.exports = router;