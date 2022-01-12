import 'package:flutter/material.dart';
import 'package:saude/models/modelos.dart';

class PostList extends StatelessWidget {
  final Paciente paciente;
  const PostList({
    Key? key,
    required this.paciente,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.white10,
          child: Text(paciente.nome),
        ),
      ],
    );
  }
}
