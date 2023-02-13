//Isso é uma interface, visto que não possui métodos implementados, sendo também conhecida como "regras de negócio" já que não possuem ações em si, só servem para descrever e ditar o que as suas classes filhas precisam ter e implementar, 0 ações próprias

//Já uma classe abstract que possua métodos implementados em si é uma classe abstrata, quer dizer que possui uso em objeto por si só

abstract class Dress {
  static String? garmentName;
  final String fabric;

  //Atributos abstratos são aqueles que serão inicializados poro seus herdeiros e não pela classe
  abstract String origin;

  Dress({required this.fabric});

  int quality();
}
