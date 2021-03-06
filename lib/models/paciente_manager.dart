import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saude/models/modelos.dart';

class PacienteManager {
  PacienteManager() {
    //recuperar contatos
    _loadAllPacientes();
  }

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  List<Paciente> listaDePacientesDoFirebase = [];

  Future<List<Paciente>> _loadAllPacientes() async {
    final pacientRef = firestore.collection('pacientes');
    QuerySnapshot querySnapshot = await pacientRef.get();

    for (DocumentSnapshot item in querySnapshot.docs) {
      //* _recuperarContatos
      String nome = item['nome'];
      String cpf = item['cpf'];
      String nasc = item['nasc'];
      String cns = item['sus'];
      bool sexo = item['sexo'];
      String endereco = item['ender'];
      String bairro = item['bairro'];
      String contato = item['contato'];
      Timestamp timestamp = item['timestamp'];
      Paciente paciente = Paciente(
          nome: nome,
          cpf: cpf,
          nasc: nasc,
          cns: cns,
          sexo: sexo,
          endereco: endereco,
          bairro: bairro,
          contato: contato,
          timestamp: timestamp);

      //* Lista de pacientes do firebase a baixo
      listaDePacientesDoFirebase.add(paciente);
    }
    // print(querySnapshot.docs[0].id); //!Captura o id
    return listaDePacientesDoFirebase;
  }
}
