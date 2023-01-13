//Modificadores de acesso são
//Público (Public)
//Privado (Private) - Dado por um '_' antes do nome da variável

//Classes na maioria das vezes representa algo da vida real. Usar ex:

class Tenis {
  //Atributos\\

  //Atributos de INSTANCIA (Variam de acordo com a variável que estiver atribunindo essa classe)
  String? tamanho;
  String? cor;
  String? marca;
  String? modelo;
  int? numero;
  double? preco;
  String? tipolimpeza;

  //Atributos de CLASSE (Intrincicos a classe, não se moldam a variável e nem dependem de uma para serem acessados)

  //Quando se muda atributos de classe, eles mudam para TODAS as variaveis que os usam, por isso é recomendado que tais atributos também sejam const para evitar problemas no código

  static const String cNome = 'TENIS'; //cNome porque é o nome de uma classe
  static const String _cVestir = 'É de vestir';
  //Colocar como privado permite que nunca haja modificações indesejadas, e o método de acesso seja apenas por encapsulamento, o que permite que saiba o que tem dentro da constante sem problema, mas nunca a mude diretamente

  //MÉTODOS DE CLASSE, assim como os atributos da mesma, não são moldados a variável e nem dependem de uma para serem acessados, estão diretamente ligados A classe

  //Métodos de classe só tem acesso a atributos de classe, por motivos óbvios
  static String ehDeVestir() => _cVestir;

  //Comportamentos
  //Também chamados de métodos (Funções dentro de classes)
  String deixardemolho() {
    if (tipolimpeza!.toLowerCase() == 'bruta') {
      return 'pode deixar de molho';
    } else {
      return 'NÂO pode deixar de molho, material Frágil';
    }
  }
}

//Sempre possuindo ATRIBUTOS (Caracteristicas) e COMPORTAMENTOS

//Esse é o caso de uma classe privada, com métodos privados e atributos privados, sendo basicamente uma classe de segurança máxima dentro do nosso programa, só podendo ser modificada por funções dentro da pasta de classes
class _TenisSecreto {
  String? _nome;
  String? _tamanho;
  String? _formula;
  String? _modelo;
  int? _precoshhh;

  void _metodosecreto() {
    print(_nome);
    print(_tamanho);
    print(_formula);
    print(_modelo);
    print(_precoshhh);
  }
}

//Avanço Construtores

class pessoa {
  static String? nome;
  static String? idade;
  static String? sexo;

  //Um construtor tem por padrão em todas as classes, não é necessario a codagem dele
  //Só saiba que ele sempre está ali
  //pessoa();

  //Então pra que usar?

  //Você pode criar construtores personalizados
  //Classes que precisam ter obrigatóriamente algum tipo de atribuição assim que se cria uma variável pode ser descrita como
  pessoa(String nomeConstrutor, String idadeConstrutor, String sexoConstrutor) {
    nome = nomeConstrutor;
    idade = idadeConstrutor;
    sexo = sexoConstrutor;
  }
  //Esse construtor acima é tão comum que foi criado um método simplificado, sendo ele
  //pessoa(this.nome, this.idade, this.sexo); || E sim, ele tem a exata mesma função

  //Assim como as funções vistas anteriormente, pode-se criar atributos obrigatórios, opcionais, nomeados e etc

  //Não se pode criar dois construtores iguais, porém é possível criar variações de construtores
  //Geralmente chamadas de Construtores Nomeados, são chamadas através de um .nome depois da atribuição na variável. EX:
  pessoa.naobinario(String nome, String idade) {
    pessoa.nome = nome;
    pessoa.idade = idade;
  } //Mesma ideia, porém sem a necessidade do sexo

  pessoa.vazia();
  //Existe também o factory, que é basicamente um construtor para quando se tem um padrão de criação
  //Quando, por exemplo, se tem a necessidade de que todo nome possua _pessoafisica sempre que se usa a classe pessoa, então se cria o construtor a seguir

  factory pessoa.fabrica(String nomeConstrutor) {
    var novonome = '$nomeConstrutor _pessoafisic';
    var pPessoa = pessoa.vazia();
    pessoa.nome = novonome;

    return pPessoa;
  }
}

//Voltando a classe secreta para trazer certas ocasiões
class TenisSecreto2 {
  final String? _nome;
  final String? _tamanho;
  String? _formula;
  String? _modelo;
  final double? _precoshhh;

  void _metodosecreto() {
    print(_nome);
    print(_tamanho);
    print(_formula);
    print(_modelo);
    print(_precoshhh);
  }

  //Agora, e se nessa classe toda cheia de private eu quiser fazer minhas inicializaões?
  //Ainda mais com as variaveis tendo a propriedade "final" para garantir que não será indevidamente modificada

  TenisSecreto2(
      {required String nomeConstrutor,
      required String tamanhoConstrutor,
      required double precoshhhConstrutor})
      : _nome = nomeConstrutor,
        _tamanho = tamanhoConstrutor,
        _precoshhh = precoshhhConstrutor {
    print('$_nome $_precoshhh $_tamanho');
  }
  //Essa quantidade de condições e : é porque como disse anteriormente, existe um construtor que sempre está lá no código, por mais que não explicito, e por mais que ele inicie as variaveis com NULL, já é considerado uma inicialização, graças a isso o programa considera que está tentando sobescrever uma variável final, e isso não é permitido
}
