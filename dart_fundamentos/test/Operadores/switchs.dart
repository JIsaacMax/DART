void main() {
  //No lugar do else if, porém ele só testa igualdades, muito usado pra menus
  final opcao = 10;

  switch (opcao) {
    case 1:
      print("selecionou a 1");
      break;
    case 2:
      print("SElecionou a dois");
      break;
    case 3:
    case 4:
    case 5:
      print('parai de contar');
      break;
    default:
      print("Nem sei contar até isso");
      break;
  }
}
