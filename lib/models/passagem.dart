class Passagem {
  int numeroVaga;
  String nome;
  String procedimento;
  String destino;
  bool idaVolta;
  Passagem({
    required this.numeroVaga,
    required this.nome,
    required this.procedimento,
    required this.destino,
    this.idaVolta = true,
  });
}
