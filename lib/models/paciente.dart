import 'package:cloud_firestore/cloud_firestore.dart';

class Paciente {
  String nome;
  String cpf;
  String nasc;
  String cns;
  bool sexo;
  String endereco;
  String bairro;
  String contato;
  Timestamp timestamp;

  Paciente({
    //*Constructor
    required this.nome,
    required this.cpf,
    required this.nasc,
    required this.cns,
    required this.sexo,
    required this.endereco,
    required this.bairro,
    required this.contato,
    required this.timestamp,
  });
}
