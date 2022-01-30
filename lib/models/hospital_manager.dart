import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saude/models/hospital.dart';

class HospitalManager {
  HospitalManager() {
    //*Recupera os hospitais
    _loadAllHospitals();
  }

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  List<Hospital> listaDeHospitaisDoFirebase = [];

  Future<List<Hospital>> _loadAllHospitals() async {
    final hospRef = firestore.collection('hospital');
    QuerySnapshot querySnapshot = await hospRef.get();
    for (DocumentSnapshot item in querySnapshot.docs) {
      //*Recuperando Hopitais do banco de dados
      String cidadeId = item['cidadeid'];
      String endereco = item['endereco'];
      String nome = item['nome'];
      Hospital hospital = Hospital(
        cidadeId: cidadeId,
        endereco: endereco,
        nome: nome,
      );
      listaDeHospitaisDoFirebase.add(hospital);
    }
    // print(querySnapshot.docs[0].id); //!Captura o id
    return listaDeHospitaisDoFirebase;
  }
}
