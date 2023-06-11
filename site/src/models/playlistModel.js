var database = require("../database/config");

function buscarAlbum(albumSelecionado) {

  instrucaoSql = `SELECT Titulo as titulo, Duração as tempo, idMusica as idMsc
  FROM musica
  WHERE fkAlbum = ${albumSelecionado};`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);

}

function adicionar() {

    instrucaoSql = `Insert into blablabla = ${albumSelecionado};`;
  
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
  
  }

module.exports = {
    buscarAlbum,
    adicionar
};