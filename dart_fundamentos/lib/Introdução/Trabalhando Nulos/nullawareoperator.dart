String? nome = 'Isaac';

void main() {
  var sobrenome = "Maximo";

  //Define que se a variável for nula, então coloca Isaac no lugar dela, tipo um placeholder para o caso de ser nulo
  var nomeinteiro = (nome ?? 'Isaac') + sobrenome;
}
