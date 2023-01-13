String? nomecompleto='Joao Isaac Maximo';

void main() {
  //Antes de chamar uma função, a verificação de nulo é obrigatória, mas seu código não precisa ficar cheio de if ==null pra ter segurança, basta apos chamar uma funçao, colocar ? anteior ao ponto

  String? nomecompletolocal = nomecompleto;

  //Ex:
  print(nomecompletolocal?.toUpperCase());

  //Já se mesclar os dois conceitos de NULL SAFETY
  print(nomecompletolocal?.toUpperCase() ?? 'Não preencheu o nome cacete');
}
