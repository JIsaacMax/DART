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
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles

  List<String> dadospacientes;
  var contadorSP = 0, contadorMG = 0;
  int dev = 0, est = 0, dent = 0, jor = 0;
  for (var paciente in pacientes) {
    dadospacientes = paciente.split('|');
    var idade = int.parse(dadospacientes[1]);
    if (idade > 20) {
      print('${dadospacientes[0]} é maior de 20 anos');
    }

    if (dadospacientes[2].toLowerCase().contains('desenvolvedor')) {
      dev++;
    } else if (dadospacientes[2].toLowerCase().contains('estudante')) {
      est++;
    } else if (dadospacientes[2].toLowerCase().contains('dentista')) {
      dent++;
    } else {
      jor++;
    }

    if (dadospacientes.contains('SP')) {
      contadorSP++;
    }
  }

  print(
  'Na lista de pacientes existem $dev desenvolvedores, $dent dentistas, $est estudantes e $jor jornalistas.');
  print(
        'Já sobre a quantidade de moradores de São Paulo existem $contadorSP!');

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //if (profissao.toLowerCase().contains('desenvolvedor')) ;

  //List<String> profissaopacientes;
  //if (profissaopacientes.toLowerCase.contains('desenvolvedor')) ;

  //! 3 - Apresente a quantidade de pacientes que moram em SP
}
