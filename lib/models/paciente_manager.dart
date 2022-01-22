import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saude/models/modelos.dart';

class PacienteManager {
  PacienteManager() {
    _loadAllPacientes();
  }

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List<Paciente>> _loadAllPacientes() async {
    final pacientRef = firestore.collection('pacientes');
    QuerySnapshot querySnapshot = await pacientRef.get();
    List<Paciente> listaDePacientesDoFirebase = [];

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
    // ignore: avoid_print
    print(
      listaDePacientesDoFirebase[0].timestamp.toDate(),
    );
    return listaDePacientesDoFirebase;
  }

  // @override
  // void initState() {
  //   //todo: implement initstate
  //   super.initState();
  // }
}
