import 'package:resume/classes/RPG/clothes/Dress.dart';

class Short extends Dress {
  //Atributos
  String? name;
  String? size;
  String? brand;
  String? color;

  @override
  set origin(String _origin) {
    // TODO: implement origin
  }
  @override
  // TODO: implement origin
  String get origin => throw UnimplementedError();

  //Anterior ao atributo se colocarmos a propriedade late, dizemos ao compilador "pode ficar tranquilo que o pai vai colocar algo ai dentro", então é quase como o ! do nullsafety só que para atributos, geralmente final

  //Ex:
  late final String etiqueta;
  //Sobrescreve qualquer propriedade de erro, até você tentar usar a propriedade, onde vai estar obviamente null

  //Atributos de classe
  //Geralmente imutáveis, por isso recomendado const e static
  static const String _washingMetod = 'A seco';
  //Modificador private se dá pelo "_" antes da variável ou método
  //Esse modificador pode ser aplicativo a métodos, atributos e classes, tornando elas acessíveis apenas para ações dentro do documento e/ou classe

  //Construtores
  Short(this.name, this.size, this.color, String fabric)
      : super(
            fabric:
                fabric); //Variável fabric só serve para passar para o construtor do superior

  Short.noColor(this.name, this.size, String fabric) : super(fabric: fabric);

  //Construtor com regras de negócio aplicada, geralmente faz os testes/modificações necessárias ANTES de criar uma instância da classe
  factory Short.factory({required String name, required String size}) {
    var pessoa = Short('Adidas', 'M', 'Black', 'STEEL');
    return pessoa;
  }

  //Método de classe
  static void wear(String name) {
    print('Vestiu a camisa $name');
  }

  static String getwash() {
    return _washingMetod;
  }

  void getPropertys() {
    print(name);
    print(size);
    print(color);
    print('\n');
  }

  //Sobrescrita de método é quando você quer uma função para todos que herdem a classe mas não necessariamente todos vão lidar da mesma forma com o método
  @override
  int quality() {
    // TODO: implement quality
    throw UnimplementedError();
  }

  //Comportamentos
}
