import 'dart:async';

void main(List<String> args) {
  //Sets são listas que não aceitam duplicidade de informação
  var lista = <int?>[];

  lista.add(1);
  lista.add(2);
  lista.add(3);
  lista.add(3);
  lista.add(2);
  lista.add(1);
  lista.add(8);
  lista.add(9);
  lista.add(12);

  var set = <int?>{};
  //Declaração dada por {}

  set.add(1);
  set.add(2);
  set.add(8);
  set.add(7);
  set.add(6);
  set.add(12);
  set.add(1);
  set.add(2);

  //Mesmo o 1 e 2 sendo adicionados duas vezes, sua impressão é unica
  print(set);

  //Metodos comuns de uso

  //Transforma de lista para set
  print('.toSet');
  print(lista.toSet());

  //Diferença comparativa de valores
  //A - B ou B - A em conjuntos, principio onde a ordem é relevante
  print('.diference');
  print(set.difference(lista.toSet()));
  print(lista.toSet().difference(set));

  //União, o famoso U da conjunção
  print('.union');
  print(set.union(lista.toSet()));

  //Intercessão, comum entre as listas
  print('.intercection');
  print(set.intersection(lista.toSet()));

  //Procura, dá uma espiada
  print('.lookup');
  print(set.lookup(12));
  //Procura por um valor, retorna o próprio, se encontrado, e null se não encontrado

  //Também é possivel converter set para lista em .toList, caso haja alguma função disponível apenas para listas ou algum valor que no meio do processo precise se repetir e depois ser removido
}
