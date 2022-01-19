import 'package:flutter/material.dart';
import 'package:saude/models/modelos.dart';

class PassageList extends StatelessWidget {
  final List<Passagem> passagens;
  const PassageList({
    Key? key,
    required this.passagens,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: passagens.length,
      itemBuilder: (context, index) {
        Passagem psg = passagens[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
          child: Column(
            children: [
              Row(
                children: [
                  Text(psg.numeroVaga.toString() +
                      'ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'),
                  Text(psg.nome),
                  Text(psg.procedimento),
                  Text(psg.destino),
                  Text(psg.idaVolta.toString()),
                ],
              ),
              const Divider(thickness: 1, color: Colors.grey),
            ],
          ),
        );
      },
    );
  }
}
