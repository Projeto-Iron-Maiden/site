var database = require("../database/config");

function calcularVezes() {

  instrucaoSql = `SELECT Vezes_selecionado as vezes FROM album`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function atualizarVezes(cont, idAlbum) {
    console.log("ACESSEI O ALBUM MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", cont, idAlbum);
    var instrucao = `
        UPDATE album set Vezes_Selecionado = ${cont} where idAlbum = ${idAlbum}`;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}


module.exports = {
    atualizarVezes,
    calcularVezes
};