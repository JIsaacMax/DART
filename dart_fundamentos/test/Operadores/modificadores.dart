

void main() {
  //Final, é um modificador de variável que a torna imutável, trazendo mais segurança para o seu código
  //Por padrão, já é inicializada com sua declaração

  final dynamic imutavel = "Eunaomudo";
  print(imutavel);

  //Final torna seu código mais seguro, devido a crachar caso algo tente mexer na sua variável.
  //A partir do primeiro valor inserido, ele será eternamente da mesma forma. UTilizar a vontade

  //Const, ela trabalha a nível de compilação, em constraste com a final, que trabalha a nível de execução.O que quer dizer que a variável final, não liga de receber valores de outra variável, ela só não pode ser diretamente modificada. Já o const, precisa que no momento de compilar o código, sua variável já esteja setada e só pode receber outros CONST;
  const dynamic variaveldeexecucao = "Naoalteradodurantetodoprograma";
  print(variaveldeexecucao);

  //Geralmente final será algo que durante o código terá um valor atribuido, como o nome de um usuário e tal, já o const, geralmente, vai ser uma informação que o código em si precisa para rodar
}
