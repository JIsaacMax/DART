import 'dart:io';

import 'package:resume/classes/RPG/Brutal.dart';
import 'package:resume/classes/RPG/Character.dart';
import 'package:resume/classes/RPG/Warrior.dart';

import 'package:resume/classes/clothes/Shirt.dart';
import 'package:resume/classes/clothes/Short.dart';

void main() {
  String? name = stdin.readLineSync();
  String? race = stdin.readLineSync();

  var personagem = Warrior(name: name??= 'Cloves', type: race??= 'Gay');

  if(personagem is Brutal){
  personagem.getPropertys();
  }
  personagem.getPropertys();

}
