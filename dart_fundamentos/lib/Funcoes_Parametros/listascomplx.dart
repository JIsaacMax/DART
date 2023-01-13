void main(List<String> args) {
  //array bidimensional (quase uma matriz)
  var lista = [
    ['jo', 'ao'],
    ['isa', 'aac']
  ];

  //expand, basicamente une as arrays dentro de uma bidimensional
  var listaunida = lista.expand((silabas) => silabas).toList();
  print(listaunida);

  //any, uma função de busca a principio, se pergunta se algum item possui o que está buscando
  var listabusca = ['buscando', 'elementos', 'contendo', 'aquilo'];
  if (listabusca.any((palavra) => palavra == 'contendo')) {
    print('Achei na lista');
  }

  //every, uma função de busca como any, porém procura se TODOS os itens de lista possuem o que busca
  //É como se acumulasse testes lógicos em cada item da lista em uma grande linha de &&
  if (listabusca.every((palavra) => palavra.contains('o'))) {
    print('Todos os itens da lista possuem a letra o');
  }

  //sort, serve pra organizar a lista ordenadamente, seus comparativos default são lexicografia e ordem crescente de valores, porém você pode modificar para criar sua lógica de organização

  var listanumeros = [1, 2, 3, 4, 44, 6545, 4, 365, 47, 65, 434, 2, 786, 8];
  listanumeros.sort();
  print(listanumeros);
  var listanomes = [
    'jo',
    'cleyu',
    'vanessa',
    'matheus',
    'leonardo',
    'gonzaag',
    'sergio',
    'hallef'
  ];
  listanomes.sort();
  print(listanomes);

  var listainesperada = ['Todo|90', 'Nada|0', 'Azideia|69'];
  listainesperada.sort((valorum, valordois) {
    final valorreal = valorum.split('|');
    final valorrealsec = valordois.split('|');

    final comparadorum = int.parse(valorreal[1]);
    final compradordois = int.parse(valorrealsec[1]);

    /*if (comparadorum > compradordois)
      return 1;
    else if (comparadorum == compradordois)
      return 0;
    else
      return -1;*/
    return  comparadorum.compareTo(compradordois);
  });

  listainesperada.sort();
  print(listainesperada);
}
