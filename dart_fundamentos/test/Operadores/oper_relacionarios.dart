void main() {
  final test = 10;
  final teste2 = 20;
  final outro = 60;
  //retornos booleanos ou só bool

  if (test > teste2) {
    print('nadaacontece');
  } else if (teste2 != outro) {
    print('Sao diferentes');
  } else if (teste2 < outro && test < outro || outro > 50) {
    print('UOU');
  }
}
