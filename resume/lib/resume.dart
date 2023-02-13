import 'dart:io';

import 'package:resume/classes/RPG/Brutal.dart';
import 'package:resume/classes/RPG/Character.dart';
import 'package:resume/classes/RPG/Warrior.dart';

import 'package:resume/classes/RPG/clothes/Shirt.dart';
import 'package:resume/classes/RPG/clothes/Short.dart';

void main() {
  String? name = stdin.readLineSync();
  String? race = stdin.readLineSync();

  var personagem = Warrior(name: name ??= 'Cloves', type: race ??= 'Gay');


  //Cascade Notation é quando usa uma classe, criada ou nativa para fazer ações subsequentes sem precisar chama-la várias vezes, em uma "cascata"
  personagem
    ..attack()
    ..deffence()
    ..loot();

  if (personagem is Brutal) {
    personagem.getPropertys();
  }
  personagem.getPropertys();
}
