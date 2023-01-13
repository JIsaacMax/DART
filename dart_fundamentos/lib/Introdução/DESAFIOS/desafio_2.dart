void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  dynamic pessoas = [
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
  pessoas = pessoas.toSet();
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  List<String> analise;

  List homens = [];
  List mulheres = [];
  List maiordeidade = [];
  int contadorM = 0, contadorF = 0;
  int maisvelha = 0;
  String maisVelha = 'Não existe mais velho';
  for (var pessoa in pessoas) {
    analise = pessoa.split('|');

    var idade = int.tryParse(analise[1]);

    if (idade! > 18) maiordeidade.add(analise[0]);

    if (maisvelha < idade) {
      maisVelha = analise[0];
      maisvelha = idade;
    }

    if (analise[2].toUpperCase().startsWith('M')) {
      homens.add(analise[0]);
      contadorM++;
    } else {
      mulheres.add(analise[0]);
      contadorF++;
    }
  }

  print(
      'A quantidade de homens na lista é de $contadorM e seus nomes são $homens!');
  print(
      'Já a quantidade de mulheres na lista é de $contadorM e seus nomes são $mulheres!');

  print(
      '\nDe toda essa lista, as pessoas que são maiores de 18 anos são $maiordeidade!');

  print('\nE a pessoa mais velha é $maisVelha com seus $maisvelha anos!');
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
}
