import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saude/models/cidade.dart';

class CidadeManager {
  CidadeManager() {
    //*Recuperar cidades
    _loadAllCities();
  }

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  List<Cidade> listaDeCidadesDoFirebase = [];

  Future<List<Cidade>> _loadAllCities() async {
    final citiesRef = firestore.collection('cidades');
    QuerySnapshot querySnapshot = await citiesRef.get();
    for (DocumentSnapshot item in querySnapshot.docs) {
      //*Recuperando cidades do Firebase
      String ibge = item['ibge'];
      String nome = item['nome'];
      Cidade cidade = Cidade(ibge: ibge, nome: nome);
      listaDeCidadesDoFirebase.add(cidade);
    }
    // print(querySnapshot.docs[0].id); //!Captura o id
    return listaDeCidadesDoFirebase;
  }
}
