//import 'funcaoparaimport.dart'; chamando função simples
import 'package:dart_fundamentos/Funcoes_Parametros/funcaoparaimport.dart' as soma;
import 'package:dart_fundamentos/Funcoes_Parametros/funcaoparaimportduplicada.dart' as somacomp;
//A chamada sempre terá acesso a pasta natural 'lib' já que ela seria a livraria de arquivos, pastas fora dessa não poderão ser acessadas por import package, ela tem acesso a outras libs, porém não a algo fora de uma lib
//Chamada profissional, geralmente quando se cria um "kit" de funções que programou e usa comummente
// "as nome" é dar um apelido ao arquivo importado, já que arquivos podem ter mesmos nomes de funções se cria diferentes nomes para chama-los, sendo colocado no inicio da chamada da função, como visto abaixo 

void main(List<String> args) {
  print(soma.somas(12, 12));
  print(somacomp.somas(12, 12));
}
