void main() {
  print(testefuncao(10.3, 20.2));
  print(testefuncaonomeada(num1: 15.8, num2: 25));
  print(testefuncaonomeada(num1: 11.5, num2: 20.5));
  print(testefuncaonomeadadefault(num1: 10.3, num2: 20.2));
}

//Funcao comum
double testefuncao(double num1, double num2) {
  return num1 * num2;
}

//A funcaonomeada possui a propriedade que ao chama-la precisa dizer quem 
//esta colocando aonde, pois a ordem não é relevante e sim o nome que
//atribui.
num testefuncaonomeada({num? num1, num? num2}) {
  num1 ??= 0;
  num2 ??= 0;
  return num1 * num2;
}

//Essa função tem propriedades de nome, porém não compila sem valores ou valores nulos
num testefuncaonomeadaobrigatoria(
    {required num num1, required num num2}) {
  return num1 * num2;
}

//Nesse caso, se o valor não for inserido, a função irá possuir valor padrão para repor no lugar
num testefuncaonomeadadefault({num num1 = 0, num num2 = 0}) {
  return num1 * num2;
}


//Essa funcao tem a propriedade opcional de variáveis, porém não possui nome
//para cada uma delas, sendo necessário a ordem correta dos fatores
num testefuncaonomeadaopcional([num? num1, num? num2]){
  num1 ??= 0;
  num2 ??= 0;
  return num1 * num2;
}

//Mistura parametros é extremamente util, os opcionais sempre serão os ultimos
//Não faz sentido, e nem é permitido, misturar opcionais com nomeados nullable
// {} com [], já que a unica diferença são que os nomeados possuem nomes
num testefuncaonomeadaTODOS(num num1,{num? num2,int = 0}){
  num2 ??= 0;
  return num1 * num2;
}
