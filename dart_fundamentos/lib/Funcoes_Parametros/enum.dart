void main(List<String> args) async {
  //enum basicamente é uma "lista de constantes", são valores que irá atribuir ocasionalmente a variáveis testes lógicos durante o código, porém precisa garantir sua integridade de forma padrão, sem alteração de maisculas e minusculas, nem espaços e etc, então se cria uma enumeração e se atribui a partir dela

  var variante = 'primeiro';

  print(Valores.primeiro);
  //Isso vai printar valores,primeiro, se quiser apenas o valor contido faça
  print(Valores.primeiro.name);
  //Se quiser atribuir esse nome a uma variável é facil
  var nome = Valores.values.byName(variante);
  print(nome);

  var valoresmap = Valores.values.asMap();
  print(valoresmap);
  //Converte seu enum em um mapa onde a chave é o indice, porém mantem o nome "valores"
  //Caso queira os nomes como chave, servindo como "indice"
  var valoresmapnomes = Valores.values.asNameMap();
  print(valoresmapnomes);
  //A vantagem de usar dessa forma é que se procurar usando .byname e o valor não for encontrado, o programa irá crashar, já se procurar por chave o nome, ele apenas retornará null e a execução vai continuar tranquilametne

}

enum Valores {
  primeiro,
  segundo,
  terceiro,
  quarto,
  quinto;
}
