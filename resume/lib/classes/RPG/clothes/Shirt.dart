import 'package:resume/classes/RPG/clothes/Dress.dart';


//A diferença entre implements e extends 

//Extends implica que aquela classe vai possuir tudo que sua classe pai possui e ainda o que for-lhe adicionada
//Já a implements deixa explicito que quem você está chamando é apenas uma interface, um contrato, o que te obriga a reescrever e implementar todos os métodos e atributos dentro da classe "filho"

//Quando usar cada um?
//Quando um atributo ou comportamento for intrincico
//Ex: Uno É um carro, então ele usa implements
//Já quando possuir algo
//Ex: Programador TEM um Pc, então se usa extends
class Shirt extends Dress{
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
  Shirt(this.name, this.size, this.color, String fabric) : super(fabric: fabric); //Variável fabric só serve para passar para o construtor do superior

  Shirt.noColor(this.name, this.size, String fabric) : super(fabric: fabric);


  //Construtor com regras de negócio aplicada, geralmente faz os testes/modificações necessárias ANTES de criar uma instância da classe
  factory Shirt.factory({required String name, required String size}){
    var pessoa = Shirt('Nike','M','Black', 'Wool');
    return pessoa;
  }

  //Método de classe
  static void wear(String name){
    print('Vestiu a camisa $name');
  }

  static String getwash(){
    return _washingMetod;
  }

  void getPropertys(){
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
