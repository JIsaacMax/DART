void main() {
  var nomes = ['JOao', 'Rafafel', 'Rogirog', 'Augstuo', 'Vanessa'];

  print(nomes);
  print(nomes[2]); //Vai aparecer o rogirog, porque o idice começa do 0
  nomes.add('claudia'); //Adiciona ao final
  print(nomes);
  nomes.insert(2, 'Jorgin'); //Adiciona pelo indice que você quiser
  print(nomes);
  nomes.addAll([
    'lista2',
    'nomes2',
    'drgoiioio2',
    'joao2'
  ]); //Adiiona uma lista dentro de outra
  nomes.remove('claudia'); //Remove o valor que bate com o que descreveu
  nomes.removeWhere((nome) =>
      nome == 'Vanessa'); //Vai caçar o valor parte por parte da lista e remover
  nomes.length; //Tamanho da minha lista
  nomes.first; //Primeiro item da lista
  nomes.last; //ultimo item da lista

  //.removeWhere .firstWhere e .lastWhere são funcs booleanas, então podem ser usadas como critério para estruturas de repetição

  final listagerada = [List.generate(10, (index) => 'Coco ${index + 1}')];
  print(listagerada);

  var maiornomedomundo = nomes.fold<String>(
    'JOao',
    (previousValue, nome) => previousValue = previousValue + nome,
  );
}
