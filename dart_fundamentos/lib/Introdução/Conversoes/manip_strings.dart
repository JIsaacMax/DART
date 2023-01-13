void main() {
  var nome = 'Jao';
  var sobrenome = 'Maximo';

  //Interpolação - Trocar entre variáveis e constantes.
  var eae = 'Olá $nome $sobrenome, tudo bom contigo?';
  print(eae);

  //Para criar funções impresas, é necessario o uso de {}, já que a ação será feita internamente, e seu retorno será impresso
  eae =
      'Olá ${nome.toUpperCase()} ${sobrenome.toUpperCase()}, tudo bom contigo?';
  print(eae);

  var insercaodados = 'Cabrau 89 BelaVista Casado';
  //Pegar mais de varios dados de uma só variável
  var dadosaleatorios = insercaodados.split(' ');
  print(dadosaleatorios);
  dadosaleatorios.forEach((element) => print(element));
}
