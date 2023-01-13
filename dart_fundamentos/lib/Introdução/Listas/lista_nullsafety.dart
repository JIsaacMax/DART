void main() {
  //? nulable (aceita nulos)
  //semnada (padrão) non-nulable != NULL (Não aceita nulo)

  //Não aceita nulos
  List<String> palavras = [];

  //Aceita nulo
  List<String>? palavrs = [];

  //Aceita itens nuloS
  List<String?> palavs = ['palavras', null, 'outaspaalvaras'];

  //Aceita itens nuloS e também aceita SER NULA
  List<String?>? palav = ['palavras', null, 'outaspaalvaras'];
}
