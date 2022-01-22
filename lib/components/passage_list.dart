import 'package:flutter/material.dart';
import 'package:saude/models/modelos.dart';

class PassageList extends StatelessWidget {
  final Passagem passagens;
  const PassageList({
    Key? key,
    required this.passagens,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                    width: 100,
                    child: Text(passagens.numeroVaga.toString() + '')),
                SizedBox(width: 300, child: Text(passagens.nome)),
                SizedBox(width: 300, child: Text(passagens.procedimento)),
                SizedBox(width: 300, child: Text(passagens.destino)),
                SizedBox(
                    width: 100, child: Text(passagens.idaVolta.toString())),
              ],
            ),
            // Divider(thickness: 1, color: Colors.grey[350]),
          ],
        ),
      ),
    );
  }
}
