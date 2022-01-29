import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AreaCriarPostagem extends StatelessWidget {
  // final Usuario usuario;
  const AreaCriarPostagem({
    Key? key,
    // required this.usuario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      // color: Colors.grey[300],
      child: Column(
        children: [
          // const Divider(height: 10, thickness: 0.5),
          // ignore: sized_box_for_whitespace
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      LineIcons.userPlus,
                      color: Colors.redAccent,
                    ),
                    label: const Text(
                      "Cadastrar",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const VerticalDivider(width: 8),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      LineIcons.calendarPlusAlt,
                      color: Colors.greenAccent,
                    ),
                    label: const Text(
                      "Agendar",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const VerticalDivider(width: 8),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      LineIcons.alternateFileAlt,
                      color: Colors.purpleAccent,
                    ),
                    label: const Text(
                      "Relatório",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              // const Divider(height: 10, thickness: 0.5),
            ],
          ),
        ],
      ),
    );
  }
}
