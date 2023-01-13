void main(List<String> args) {
  //Uma excessão nada mais é que um tratamento de erro mais familiar ao usuário

  var valorescrito = '80rs';

  try {
    //assim como no tryparse ao inves de só parse, aqui nós dizemos o que o programa irá tentar executar
    String? palavra;
    palavra!.toLowerCase();

    var numero = int.parse(valorescrito);
    if (numero == 80) throw Exception();
  } on TypeError {
    //Erro de typagem
    print('Erro na conversão de caracteres');
  } on FormatException catch (e) {
    //Erro de excessão de formato, formato não foi suportado ou convertido
    print(e); //Mensagem de erro padrão do sistema

  } on Exception catch (s) {
    print(s); //Diz onde ocorreu o erro, linha e arquivo de projeto

  } finally {
    //Executado independemente do erro que ocorreu
    print('Fim da tentativa!');
  }
}
