import 'package:test/test.dart';

void main() {
  final valor = 10;
  final comparativo = 9756;

  if (comparativo > valor) {
    print('e maior');
  }

  //ternarios
  //estrutura:
  //condicao ? faça algo : outra coisa

  //ex:
  final maior = comparativo>valor ?  true : false ;

  // ignore: prefer_interpolation_to_compose_strings
  print('Segundo valor maior que primeiro? ' + maior.toString());
}
