import 'package:resume/classes/clothes/Shirt.dart';
import 'package:resume/classes/clothes/Short.dart';

void main() {
  var nikeTShirt = Shirt.factory(name: 'Nike', size: 'M');
  nikeTShirt.getPropertys();
  var adidasShorts = Short.factory(name: 'Adicas', size: 'W');

  adidasShorts.getPropertys();
}
