class Passagem {
  int numeroVaga;
  String nome;
  String procedimento;
  String destino;
  bool ida;
  bool volta;
  Passagem({
    required this.numeroVaga,
    required this.nome,
    required this.procedimento,
    required this.destino,
    this.ida = true,
    this.volta = true,
  });
}
