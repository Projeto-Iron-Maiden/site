var database = require("../database/config");

function listar() {
  var instrucao = `
    SELECT Vezes_selecionado FROM album;
  `;
  console.log("Executando a instrução SQL:\n" + instrucao);

  return new Promise((resolve, reject) => {
    database.executar(instrucao)
      .then((resultados) => {
       
        var vetorAlbums = [];

        // adicionar os valores ao vetor
        for (var i = 0; i < resultados.length; i++) {
          vetorAlbums.push(resultados[i].Vezes_selecionado);
        }

        // Retornar o vetor com os valores
        resolve(vetorAlbums);

      })
      .catch((erro) => {
        reject(erro);
      });
  });
}

function redirecionarParaAlbuns(vetorAlbums) {
  var vetorAlbumsJSON = JSON.stringify(vetorAlbums);
  window.location.href = "albuns.html?dados=" + vetorAlbumsJSON;
}


function cadastrar(cont, idAlbum) {
    console.log("ACESSEI O ALBUMS MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", cont, idAlbum);
    var instrucao = `
        UPDATE album set Vezes_Selecionado = ${cont} where idAlbum = ${idAlbum};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}


module.exports = {
    cadastrar,
    redirecionarParaAlbuns,
    listar
};