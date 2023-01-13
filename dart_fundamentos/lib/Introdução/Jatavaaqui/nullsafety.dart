var variavelsuperior="TOP";
void main() {
  //Impede basicamente ficar futucando no NULL, não é possível atribuir nada a NULL e nem mexer nele, porém um operador muda a situação
  String? nula = null;
  print(nula);

  ///Não dará erro na compilação, justamente porque o identificador ? significa que aquela variável pode conter um valor "nulificado"

  //Porém isso tem um custo, já que métodos onde uma variável não pode ser nula, não vão ser permitidos antes de você verificar se a variável é nula, então o compilador vai depender dessa verificação para aceitar que chame uma função/método
  print(nula!.length);

  ///O tamanho da variável não poderia ser sido chamado, porém como usei ! após a varíavel, é com se dissesse ao compilador que eu garanto que terá um valor dentro dessa variável. EVITE USA-LA, já que isso contorna justamente a segurança do código
  
  //Variáveis de nível superior precisam ser inicializadas, já variáveis locais não precisam, podem ser declaradas e depois atribuidas
}
