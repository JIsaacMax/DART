import 'package:resume/classes/RPG/Character.dart';

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

  void getPropertys() {
    print('''
    name: $name
    level: $level
    race: $type
    Creation Date: $creatDate\n''');
  }
}
