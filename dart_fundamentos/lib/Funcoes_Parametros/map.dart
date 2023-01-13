void main(List<String> args) {
  //Maps são declarados muito similar a sets, com o uso das {}
  //Seu diferencial está em sua especificação de tipo, onde você escreve dois tipos
  //Um dos tipos seria seu "codenome" e o outro o valor contido nesse nome
  //Podem ser de String para String, int para String, int double e etc.

  var map = <int, String>{90: 'Valor90', 10: 'Valor10', 1: 'PRIMARIO'};
  print(map);

  //Suas propriedades nullsafety possuem declarações iguais as listas, porém como são dois tipos
  //pode definir qual dos tipos aceitara nulo ou se o próprio map aceitará null. EX:
  Map<int, String?> mapanullsafetyvalor = {12: null};
  print(mapanullsafetyvalor);
  //Mapa não aceita ficar vazio (null), porém aceita que suas chaves contenham nulo

  Map<int?, String> mapanullsafetynome = {null: 'valor'};
  print(mapanullsafetynome);
  //Mapa não aceita ficar vazio (null), porém aceita que suas chaves sejam nulos

  Map<int?, String?> mapanullsafetyambos = {null: null};
  print(mapanullsafetyambos);
  //Mapa não aceita ficar vazio (null), porém aceita que suas chaves sejam e contenham nulo

  Map<int, String>? mapanullsafetycompleto = {};
  print(mapanullsafetycompleto);
  //Mapa aceita ficar vazio (null), porém se algum valor for inserido, nem suas chaves nem o valor podem ser nulos

  ////UTILIZANDO MAPS\\\\
  var bebidas = <String, String>{};
  //Lembrando que a declaração pode ser feita como Map <tipo, tipo> nomedomapa; OU
  // tipo nomevariavel = <tipo, tipo> {};

  bebidas.putIfAbsent('Cevada', () => 'Skoll');
  bebidas.putIfAbsent('Cevada', () => 'Brama');
  print(bebidas);
  //Como a chave 'cevada' já está sendo usada, só o primeiro valor será inserido

  bebidas.update('Cevada', (value) => 'Brama');
  print(bebidas);
  //Agora sim, pedi para que se a chave já foi usada, o valor será atualizado
  //Porém esse método da erro caso já não tenha aquela chave em uso, seu complemento então fica:
  bebidas.update('Shots', (value) => 'Vodka', ifAbsent: () => 'Vodka');
  //Aqui então se pede para que se não achar, inserir

  //Para chamar o valor por sua chave se usa
  print(
      'Bebida do tipo shot que temos é ${bebidas['Shots']}'); //Usando a chave como "indice"

  //Varrer o mapa

  //Varredura completa
  bebidas.forEach((key, value) {
    print('Bebida: $value');
  });

  //Varredura assincrona
  for (var valor in bebidas.values) {
    print('Bebida: $valor');
  }

  //O mapa possibilita que dentro de uma só chave possua outros mapas, listas e sets, criando um efeito aninhado de mapas dentro de outros
}
