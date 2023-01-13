import 'package:dart_poo/Introducao_POO/classes.dart';

void main(List<String> args) {
  var tenisjordan = Tenis();
  tenisjordan.cor = 'Preto';
  tenisjordan.marca = 'Nike';
  tenisjordan.modelo = 'Jordan';
  tenisjordan.tamanho = 'G';
  tenisjordan.numero = 41;
  tenisjordan.preco = 340.5;
  tenisjordan.tipolimpeza = 'Seco';

  print('''
    O tenis modelo ${tenisjordan.modelo}
    Da marca ${tenisjordan.marca}
    Tamanho ${tenisjordan.tamanho}
    Na cor ${tenisjordan.cor}
    Está saindo na faixa de R\$ ${tenisjordan.preco}
    Ele é do tipo que ${tenisjordan.deixardemolho()}
      ''');

  Tenis bootdecria =
      new Tenis(); //New e a classe ser dita como tipo é desnecessaria, não faz diferença
  bootdecria.cor = 'Vermelho';
  bootdecria.marca = 'Oakley';
  bootdecria.modelo = 'Quebrada';
  bootdecria.tamanho = 'G';
  bootdecria.numero = 38;
  bootdecria.preco = 150.90;
  bootdecria.tipolimpeza = 'Bruta';
  print('''
    O tenis modelo ${bootdecria.modelo}
    Da marca ${bootdecria.marca}
    Tamanho ${bootdecria.tamanho}
    Na cor ${bootdecria.cor}
    Está saindo na faixa de R\$ ${bootdecria.preco}
    Ele é do tipo que ${bootdecria.deixardemolho()}
      ''');
}
