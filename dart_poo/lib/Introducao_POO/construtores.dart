import 'package:dart_poo/Introducao_POO/classes.dart';

void main(List<String> args) {
  //Usando um construtor personalizado que torna atribuições obrigatórias temos a seguinte declaração

  var eu = pessoa('João Isaac', '18 anos', 'Masculino');

  print(eu);

  //Construtor nomeado

  var nonbinario = pessoa.naobinario('Ketelaine', '15 anos');

  print(nonbinario);
}
