import 'devTools/prints.dart' as print_Complet; // (Por caminho)
// import 'package:resume/devTools/prints.dart' as printComplet; //Por package, mais facil de não ter problema com os caminhos mudando

void imporUses() {
  print_Complet.printCharName(
      'bacaninha'); //Um jeito de resolver conflitos de funções ou classes em imports diferntes
}

String? superiorStr;

String nullableUhuu() {
  final variable;
  //Diferença entre variavel const e final é que a final pode ser assinada depois que o programa foi compilado, porém, uma vez que iniciada, seu valor não pode ser alterado de forma alguma
  const variableConst = 12;
  //Já variáveis constantes só aceitam receber atribuições de outras constantes ou variáveis já iniciadas durante o programa, seu "teste" funciona a tempo de compilação, então precisam já ter seu "substituto" para a compilação completa do código
  print(variableConst);

  num? cannull;
  //Utilizar ? no tipo de variável, diz para o compilador que ela pode conter nulo sem problemas
  print(cannull?.toString() ?? 'Variável nula');
  //O operador ? anterior a uma propriedade faz com que o código não quebre, a verificação de nulo ocorre e retorna null, seja lá para qual chamada, já unico com "??" faz com que se tenha um placeholder garantindo a presença de uma impressão.
  //Trocar ? por ! é como dar a certeza ao compilador que aquela variável não será nula, porém é bom evitar o uso já que GERALMENTE o compilador está certo

  //Operador ?? aceita ações com variáveis nulas, já que em seguida se propõe um placeholder pra ele
  var result = (cannull ?? 1) + 1;
  print(result);
  variable = 'UAU FINAL';
  print(variable);
  return 'Uhuu';
}

int repeat() {
  var myList = <String?>['João'];
  const count = 10;
  for (var element in myList) {
    // myList.add(element?? "invalid yeah");
    // myList.add("invalid yeah");
  }

  for (var i = 0; i < count; i++) {
    myList.add("Ok");
  }

  myList.forEach((element) => print("$element yeah"));
  var justOkList = myList.skipWhile((value) => value != "Okyeah");
  print(myList);
  print(justOkList);
  return 1;
}

void manipulation() {
  //Strings
  var name = "João Isaac Guimarães Maximo";
  var rollCall = <String?>[];

  var shortName = name.substring(0, 4);
  rollCall.add(name);
  rollCall.add(shortName);

  print(rollCall[0]!.toLowerCase().startsWith("is"));
  print("$name\nPara encurtar $shortName");

  rollCall.forEach((n) {
    if (n!.contains("maximo")) {
      print("Tem um Maximo na chamada!");
    }
  });
}

void parametersConcept() {
  //parametros comuns (int plau, string blau)
  //chamada funcao(12, 'nome')

  //parametros nomeados ({int? plau, string? blau}) "Opcionais"
  //chamada funcao(plau: 12, blau:'nome') || funcao(blau:'nome', plau: 12) "Por serem nomeados podem ser passados em qualquer ordem"

  //parametros nomeados obrigatórios ({required int play, required string blau})

  //parametros default ({int plau = 0, string blau = 'ok'})

  //parametros opcionais ([int plau, string blau])

  //SE PODE MESCLAR OS TIPOS DE PARAMETROS NA FUNCAO, tendo a regra que os parametros nomeados/opicionais tem que ser os ultimos requeridos na função

  //Arrow function
  int oneLineFunction(int val1, int val2) => val1 + val2;
  print(oneLineFunction(2, 4));

  //Anonimal function
  // () {
  //   print("SHHHHH, o segredo é secreto");
  // }();
  //Geralmente usada para ser atribuida a uma variável
  var ShhhhFunction = () {
    print("SHHHHH, o segredo é secreto");
  }();

  ShhhhFunction();
  //A função é atribuida a uma variável para que possa ser passada como parâmetro para outra função
  //Geralmente, uma função que não tem acesso a essa anonima naturalmente
}

//Typedef
//Devem ser chamados fora de qualquer função, são universais ao documento
typedef Shh = int;
// Shh number; == int number;

void listSearch() {
  List<String> words = List.generate(10, (index) => '$index a');
  print(words);

  //algum
  if (words.any((element) => element.contains('6'))) {
    print('temmmm');
  }

  // for (var word in words) {
  //todos
  if (words.every((element) => element.toLowerCase().contains('a'))) {
    print('todos tem');
  } else {
    print('nem todos tem');
  }
  // }

  words.sort(); //Ordenação por comparação nativa

  //Ordenação por lógica opcional
  words.sort((word1, word2) {
    if (word1.length > word2.length) {
      return word1.length;
    } else {
      return word2.length;
    }
  });
  print(words);

  words.sort((word1, word2) {
    return word1.compareTo(word2);
  });
  print(words);

  //Matriz ou array de lista
  var listMatrix = [
    [1, 2],
    [3, 4]
  ];
  var concatList = listMatrix.expand((element) => element);

  print(concatList
      .toList()); //É necessario a propriedade .toList() pois ao usar manipulaçõa de listas, a variável que a recebe tende a ser Iterable, que é um tipo acima da lista, caracteristica por () ao invés de []

  //set
  //Caracteristia principal é a não aceitação de valores repetidos
  var repeatList = <int>[];
  var nonRepeatSet = <int>{};

  repeatList.add(12);
  nonRepeatSet.add(12);
  repeatList.add(12);
  nonRepeatSet.add(12);
  repeatList.add(12);
  nonRepeatSet.add(12);
  print(repeatList);
  print(nonRepeatSet);

  //também é possível manipular listas para set
  print(repeatList.toSet());
  //A manipulação é temporaria, não modifica a lista original

  //Ainda no meio de manipulão e filtragem de dados
  nonRepeatSet.add(09);
  nonRepeatSet.add(8);
  nonRepeatSet.add(3);

  print(nonRepeatSet.difference(repeatList.toSet())); //Diferença
  print(nonRepeatSet.intersection(repeatList.toSet())); //Intercessão
  print(nonRepeatSet.union(repeatList.toSet())); //União

  //Ainda no set que é um interable, podemos procurar por um elemento com
  nonRepeatSet.lookup(
      3); //Ele irá retornar o objeto procurado no set, caso não ache retorna null
  //No caso de string ele não é case sensitive, o que facilita sua busca

  //Map
  var mapInventory = <String, String>{};
  //É o melhor esquema entre você fazer variáveis nomeadas dentro de uma lista", podendo tanto as chaves, quanto a var quanto o valor contido nullo usando ? na posição intuitiva.
  mapInventory.putIfAbsent(
      'mainWeapon',
      () =>
          'emptyHand'); //putIfAbsent está confirmando que a key mainWeapon não existe, e se não existir vai colocar emptyHand, se já existir uma mainWeapon ele não fara nada

  mapInventory.update(
      'mainWeapon',
      (value) =>
          'hugeSword'); //Já essa propriedade atualiza o valor que esteja dentro da key mainWeapon

  //Também é possível unir o update com ifBasent para quando não está certo se vai estar sobreescrevendo, ou quer passar um valor diferente se já existir
  mapInventory.update('secondWeapon', (value) => 'stick',
      ifAbsent: () => 'club');

  //Tendo isso em vista, a forma de pedir por um indice no map, irá passar a key, que servira como [i]
  print(mapInventory['mainWeapon']);
}

void tryCatchConcept() {
  try {
    var birULaibe;
    birULaibe = '18.90';
    var outroLaibe = int.parse(birULaibe);
    // var outroLaibe = double.parse(birULaibe);
    print(outroLaibe);

    //Se houver uma condição especifica de uso importante para forçar um erro, pode lança-lo após a verificação
    if (outroLaibe < 19) throw Exception();
  } on TypeError {
    print('Escreveu errado');
  } catch (e, s) {
    print('Deu erro ai meu bom');
    print('Foi na linha $s');
  } finally {
    print('ACABO');
  }

  //Hierarquicamente se deve pegar de um erro especifico (1º) até um erro geral que seria o Exception, todas são excessões, já erros espescificos possuem sua ordem de precedência
}

void main() {
  // nullableUhuu();
  // repeat();
  // manipulation();
  parametersConcept();
  // listSearch();
  // tryCatchConcept();
  imporUses();
}
