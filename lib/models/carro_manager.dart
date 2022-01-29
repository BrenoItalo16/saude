import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saude/models/carro.dart';

class CarroManager {
  CarroManager() {
    //*Recuperar carros
    _loadAllCars();
  }

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  List<Carro> listaDeCarrosDoFirebase = [];

  Future<List<Carro>> _loadAllCars() async {
    final carsRef = firestore.collection('carro');
    QuerySnapshot querySnapshot = await carsRef.get();
    for (DocumentSnapshot item in querySnapshot.docs) {
      //*Recuperando os carros do firebase
      String cor = item['cor'];
      String modelo = item['modelo'];
      String nome = item['nome'];
      String placa = item['placa'];
      Carro carro = Carro(
        cor: cor,
        modelo: modelo,
        nome: nome,
        placa: placa,
      );
      listaDeCarrosDoFirebase.add(carro);
    }
    return listaDeCarrosDoFirebase;
  }
}
