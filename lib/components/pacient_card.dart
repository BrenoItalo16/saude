import 'package:flutter/material.dart';
import 'package:saude/models/modelos.dart';

class PacientCard extends StatelessWidget {
  final Paciente paciente;
  const PacientCard({
    Key? key,
    required this.paciente,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      child: Text(paciente.nome),
      color: Colors.grey[200],
    );
  }
}
