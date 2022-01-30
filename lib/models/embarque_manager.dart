import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saude/models/embarque.dart';

class EmbarqueManager {
  EmbarqueManager() {
    //*Recuperar locais de embarque
    _loadAllEmb();
  }

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  List<Embarque> listaDeEmbarquesDoFirebase = [];

  Future<List<Embarque>> _loadAllEmb() async {
    final embRef = firestore.collection('enbarque');
    QuerySnapshot querySnapshot = await embRef.get();
    for (DocumentSnapshot item in querySnapshot.docs) {
      //*Recuperando embarque do firebase
      String nome = item['nome'];
      Embarque embarque = Embarque(nome: nome);
      listaDeEmbarquesDoFirebase.add(embarque);
    }
    // print(querySnapshot.docs[0].id); //!Captura o id
    return listaDeEmbarquesDoFirebase;
  }
}
