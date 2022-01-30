import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saude/models/procedimento.dart';

class ProcedimentosManager {
  ProcedimentosManager() {
    //*Recupera os procedimentos
    _loadAllPrecedures();
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  List<Procedimento> listaDeProcedimentosDoFirebase = [];

  Future<List<Procedimento>> _loadAllPrecedures() async {
    final procedureRef = firestore.collection('procedimentos');
    QuerySnapshot querySnapshot = await procedureRef.get();
    for (DocumentSnapshot item in querySnapshot.docs) {
      String cidadeid = item['cidadeid'];
      String endereco = item['endereco'];
      String nome = item['nome'];
      bool tipo = item['tipo'];
      Procedimento procedimento = Procedimento(
        cidadeid: cidadeid,
        endereco: endereco,
        nome: nome,
        tipo: tipo,
      );
      // print(querySnapshot.docs[0].id); //!Captura o id
      listaDeProcedimentosDoFirebase.add(procedimento);
    }
    return listaDeProcedimentosDoFirebase;
  }
}
