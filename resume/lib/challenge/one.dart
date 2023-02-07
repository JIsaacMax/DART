void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  var pessoasSet = pessoas.toSet();
  // print(pessoasSet);
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  List<String> namePeople = [];
  List<String> yOldPeople = [];
  List<String> sexPeople = [];

  int countMale = 0;
  int countFemale = 0;

  for (var pessoa in pessoasSet) {
    var tempAux = pessoa.split('|');
    namePeople.add(tempAux[0]);
    yOldPeople.add(tempAux[1]);
    sexPeople.add(tempAux[2]);
  }

  for (var sex in sexPeople) {
    if (sex.contains('Masculino')) {
      countMale++;
    } else {
      countFemale++;
    }
  }
  print(
      'Em nossa base de dados contem $countMale homens e $countFemale mulheres');
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  pessoasSet.removeWhere((element) => (int.parse(element.split('|')[1])) < 18);
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  int elderly = 0;
  for (var yearOld in yOldPeople) {
    if (int.parse(yearOld) > elderly) {
      elderly = int.parse(yearOld);
    }
  }
  for (var people in pessoasSet) {
    if (people.contains(elderly.toString())) print(people.split('|')[0]);
  }
}
