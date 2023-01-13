void main(List<String> args) {
  final valor = 897;

  print("Valor inserido igual a $valor");
  print('Você acaba a de digitar ${valor + 1} - 1');

  //testes com o valor inserido
  if (valor.isNegative) print('no');

  //double
  final double = 90.45;
  print(double.round()); //Arredonda o double
  print(double.roundToDouble()); //Arredonda mas permanece double

  //Converter string em número

  final stringdigito = '40';
  final digitoconvertido =
      int.parse(stringdigito); //Força a conversão, se não é possível da erro
  final digitoconvertidoop = int.tryParse(
      stringdigito); //Tenta converter, se não consegue, permanece NULL
  print(digitoconvertido);
  print(digitoconvertidoop);

  print(double.toStringAsFixed(2)); //Vai imprimir em string, com 2 digitos de casa decimal
}
