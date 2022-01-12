//Neste documento devem ser inseridos os dados do paciente para armazenar no db
import 'package:saude/models/modelos.dart';

class Postagem {
  Paciente paciente;
  String nome;
  String cpf;
  int idade;

  Postagem({
    required this.paciente,
    required this.nome,
    required this.cpf,
    required this.idade,
  });
}
