void main(List<String> args) {
  //Funções arrow são basicamente funções normais que consistem em uma só linha
  //Ex:
  /*
  Ao invés de criar uma função inteira
  int soma(int valor, int valor2)
  {
    return valor+valor2;
  }
  você faz
  int soma(int valor, int valor2) => valor+valor2;
  */

  //funções anonimas (Possuem esse nome por não ter nome)
  () {
    print('chamei');
  }();

  //geralmente usada pra ser atribuida a variaveis ou ser justamente passada como parâmetro
  var qualquerfuncao = () {
    print('eufizminha funcao');
  }();
}

bool funcaoparametrofuncao(Function qualquerfuncao) {
  if (qualquerfuncao()) print('funcionei');
  return true;
}

//Typedef é criar apelido pra grandes chamadas e usos repetitivos que talvez sejam grandes demais para serem práticos no código