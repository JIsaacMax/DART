void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];
  //! Baseado no array acima monte um relatório onde:
  //Data Organization

  var nameList = <String>[];
  var yearOldList = <String>[];
  var officeList = <String>[];
  var stateList = <String>[];

  int countOfficeDev = 0;
  int countOfficeStu = 0;
  int countOfficeDent = 0;
  int countOfficeJour = 0;

  int countResSP = 0;
  for (var paciente in pacientes) {
    List<String> randomInfo;
    randomInfo = paciente.split('|');

    nameList.add(randomInfo[0]);
    yearOldList.add(randomInfo[1]);
    officeList.add(randomInfo[2]);
    stateList.add(randomInfo[3]);
  }

  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  for (var i = 0; i < yearOldList.length; i++) {
    if (int.tryParse(yearOldList[i])! > 20) {
      print("${nameList[i]} é maior de 20 anos");
    }
  }

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)

  for (var professional in officeList) {
    if (professional.toLowerCase().contains("desenvolvedor"))
      countOfficeDev++;
    else if (professional.toLowerCase().contains("dentista"))
      countOfficeDent++;
    else if (professional.toLowerCase().contains("estudante")) countOfficeStu++;
    if (professional.toLowerCase().contains("jornalista")) countOfficeJour++;
  }

  print(
      "Em nosso banco de dados temos $countOfficeDev desenvolvedores, $countOfficeStu estudantes, $countOfficeDent dentistas e $countOfficeJour jornalistas");

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  for (var resident in stateList) {
    if (resident.toLowerCase().contains("sp")) countResSP++;
  }
  print("Em nosso banco de dados possuimos $countResSP moradores de SP");
}
