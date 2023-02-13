import 'package:resume/classes/RPG/Character.dart';
import 'package:resume/classes/RPG/clothes/Dress.dart';

class Warrior implements Character {
  @override
  late final DateTime creatDate;

  @override
  late int level;

  @override
  String name;

  @override
  String type;

  Warrior({required this.name, required this.type}) {
    creatDate = DateTime.now();
    level = 1;
  }

  //Operators, pode-se usar + - / E etc só que sobre dois valores da mesma classe

  Warrior operator -(Warrior SecondWarrior) {
    return Warrior(name: '$level', type: '${level + SecondWarrior.level}');
  }

  void getPropertys() {
    print('''
    name: $name
    level: $level
    race: $type
    Creation Date: $creatDate\n''');
  }

  void attack() {
    print('O guerreiro $name ATACOU MUITO FODAAAAAA');
  }

  void deffence() {
    print('O guerreiro $name DEFENDEU SUA VIDA');
  }

  void loot() {
    print('O guerreiro $name Looteou o inimigo e achou coisas leagias!');
  }
  
  @override
  int compareTo(Character other) {
    // TODO: implement compareTo
    throw UnimplementedError();
  }
}
